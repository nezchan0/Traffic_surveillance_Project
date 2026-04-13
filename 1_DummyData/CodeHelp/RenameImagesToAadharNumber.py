import os
import pandas as pd

# Path to the Excel file and images folder
excel_file_path = "TrafficProject/1_DummyData/CodeHelp/Aadhar_number.xlsx"
images_folder_path = "TrafficProject/2_DL_Detection/server1/TrafficProject/media/face_images"

# Read the Excel file
df = pd.read_excel(excel_file_path)

# Extract Aadhaar numbers
aadhar_numbers = df['Aadhar_no'].tolist()

# Get the list of images in the folder
images = os.listdir(images_folder_path)

# Rename the images
for i, image_name in enumerate(images):
    if i < len(aadhar_numbers):
        # Get the Aadhaar number and ensure it's a string
        aadhar_number = str(int(float(aadhar_numbers[i])))  # Convert to string if needed
        # Get the file extension (e.g., .jpg, .png)
        file_extension = os.path.splitext(image_name)[1]
        # Get the current and new file paths
        old_image_path = os.path.join(images_folder_path, image_name)
        new_image_name = f"{aadhar_number}{file_extension}"
        new_image_path = os.path.join(images_folder_path, new_image_name)
        # Rename the image
        os.rename(old_image_path, new_image_path)
        print(f"Renamed {image_name} to {new_image_name}")
    else:
        print("Number of images exceeds Aadhaar numbers in the Excel file.")
        break

print("Renaming complete!")
