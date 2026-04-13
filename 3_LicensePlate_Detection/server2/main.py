from flask import Flask, render_template, Response
import cv2
import easyocr
import torch
import re
from ultralytics import YOLO
from multiprocessing import Process, Queue
import time
from flask_cors import CORS


global video_source,APISITEURL

#Use IP Camera to simulate the behaviour of Live camera feed
#the mobile phone and laptop on which this flask server is running should be on same wifi.
video_source = 'https://192.168.0.114:8080/video'

#this is the django server1 DL_Detection Server url either use local host or host is using ngrok or something
BaseURL="http://127.0.0.1:8000"
#BaseURL="https://10b2-203-192-253-174.ngrok-free.app/"
APISITEURL=f"{BaseURL}/TrafficProject/api/vehicle-details/"

app = Flask(__name__)

detected_plates_queue = Queue()  # Queue for communication between processes

# Route for the main page
@app.route("/")
def single_page():
    return render_template("index.html",video_src=video_source,apiurl=APISITEURL)

# SSE endpoint for live data
@app.route("/live-data")
def live_data():
    def generate():
        while True:
            try:
                if not detected_plates_queue.empty():
                    plate = detected_plates_queue.get()  # Get plate from the queue
                    yield f"data:{plate}\n\n"
            except Exception as e:
                print(f"Error in SSE stream: {e}")
            finally:
                time.sleep(1.5)  # Control the streaming frequency
    
    return Response(generate(), content_type="text/event-stream")

# Function to handle detected plates
def handle_new_plate(plate_text, detected_plates, queue):
    sanitized_text = re.sub(r'[^A-Za-z0-9]', '', plate_text)
    license_plate_pattern = r'[A-Z]{2}\d{2}[A-Z]{2}\d{4}'  # Adjust this regex for your license plate format
    if re.fullmatch(license_plate_pattern, sanitized_text):
        part1 = sanitized_text[:2]  # First two letters (e.g., KA)
        part2 = sanitized_text[2:4]  # Next two digits (e.g., 16)
        part3 = sanitized_text[4:6]  # Next two letters (e.g., QV)
        part4 = sanitized_text[6:]  # Remaining digits (e.g., 1276)
        # Join the parts with hyphens
        formatted_number_plate = f"{part1}-{part2}-{part3}-{part4}"
        if formatted_number_plate not in detected_plates:
            detected_plates.add(formatted_number_plate)
            queue.put(formatted_number_plate)  # Add the plate to the queue
            print(f"New Plate Detected: {formatted_number_plate}")

# Function to detect number plates
def detect_number_plates(queue, video_source=0, width=None):
    detected_plates = set()
    # Initialize EasyOCR reader
    reader = easyocr.Reader(['en'], gpu=torch.cuda.is_available())
    # Load YOLO model for license plate detection
    model_lp = YOLO('./license_plate_detector.pt')
    cap = cv2.VideoCapture(video_source)
    if not cap.isOpened():
        print("Error: Unable to access video source.")
        return

    print("Starting video feed... Press 'q' to quit.")

    while True:
        ret, frame = cap.read()
        if not ret:
            print("Error: Unable to read frame from video feed.")
            break

        # Resize frame while maintaining aspect ratio
        if width:
            aspect_ratio = frame.shape[1] / frame.shape[0]
            height = int(width / aspect_ratio)
            frame = cv2.resize(frame, (width, height))

        # Perform license plate detection
        results_lp = model_lp(frame)

        # Process bounding boxes
        for bbox_lp in results_lp[0].boxes:
            x1_lp, y1_lp, x2_lp, y2_lp = map(int, bbox_lp.xyxy[0])
            confidence_lp = bbox_lp.conf[0]

            if confidence_lp > 0.5:  # Confidence threshold for YOLO
                # Crop license plate area
                license_plate_image = frame[y1_lp:y2_lp, x1_lp:x2_lp]

                # Convert to grayscale
                gray_plate = cv2.cvtColor(license_plate_image, cv2.COLOR_BGR2GRAY)

                # Perform OCR on the cropped region
                ocr_results = reader.readtext(gray_plate)

                for detection in ocr_results:
                    text, ocr_confidence = detection[1], detection[2]
                    if ocr_confidence > 0.5:  # Confidence threshold for OCR
                        print(f"Detected Plate: {text}")

                        # Draw bounding box and label on the frame
                        cv2.rectangle(frame, (x1_lp, y1_lp), (x2_lp, y2_lp), (0, 255, 0), 2)
                        cv2.putText(frame, text, (x1_lp, y1_lp - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.8, (255, 0, 0), 2)

                        handle_new_plate(text, detected_plates, queue)  # Handle detected plate

        # Display the frame
        cv2.imshow('License Plate Detection', frame)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    cap.release()
    cv2.destroyAllWindows()

if __name__ == "__main__":

    # Create a separate process for number plate detection
    detection_process = Process(target=detect_number_plates, args=(detected_plates_queue, video_source, 640))

    # Start Flask server
    detection_process.start()
    app.run(debug=True, use_reloader=False)  # Use `use_reloader=False` to avoid issues with multiprocessing
    detection_process.join()
