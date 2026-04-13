# 🚀 Flask License Plate Detection Setup Guide

Follow these steps to properly set up and run the Flask-based License
Plate Detection system.

------------------------------------------------------------------------

## 🐍 Step 1: Create Virtual Environment

Create a virtual environment (if not already created):

``` bash
python -m venv venv
venv\Scripts\activate
```

------------------------------------------------------------------------

## 📦 Step 2: Install Requirements

Install all dependencies:

``` bash
pip install -r requirements.txt
```

------------------------------------------------------------------------

## ⚙️ Step 3: Configure Server Code

Update the following variables in your Flask script:

-   **Django Backend URL (Port 8000)** → `BaseURL`
-   **Video Source URL (IP Camera)** → `video_source`

Example:

``` python
video_source = 'https://<your-phone-ip>:8080/video'
BaseURL = "http://127.0.0.1:8000"
```

------------------------------------------------------------------------

## 📡 Step 4: Network Setup

Make sure all devices are connected to the **same WiFi network**:

-   💻 Laptop → Flask Server
-   📱 Phone 1 → Camera (IP Webcam)
-   📱 Phone 2 → User Interface

------------------------------------------------------------------------

## 🔗 Step 5: Important Links

-   **Link 1 (Django Backend)** → `http://<laptop-ip>:8000`
-   **Link 2 (Flask Server)** → `http://<laptop-ip>:5000`
-   **Link 3 (Video Feed)** → `http://<phone-ip>:8080/video`

------------------------------------------------------------------------

## ▶️ Step 6: Run Servers

### Start Django Server (Port 8000)

``` bash
python manage.py runserver
```

### Start Flask Server (Port 5000)

``` bash
python app.py
```

------------------------------------------------------------------------

## 📱 Step 7: Usage Flow (Very Important)

On the **user phone**, follow this order:

1.  Open **Link 1 (Django backend)**
2.  Open **Link 3 (Video stream)**
3.  Finally, open **Link 2 (Flask app)**

------------------------------------------------------------------------

## 🎯 Final Notes

-   Make sure ports **8000** and **5000** are accessible.
-   Ensure correct IP addresses are used (not localhost when using
    phone).
-   YOLO model file (`license_plate_detector.pt`) must be present.
-   Tesseract / EasyOCR dependencies must be properly installed.

------------------------------------------------------------------------

## ✅ Outcome

-   Live video stream detected ✔️
-   License plates extracted ✔️
-   Data sent to Django backend ✔️
-   Results visible on user phone ✔️

------------------------------------------------------------------------