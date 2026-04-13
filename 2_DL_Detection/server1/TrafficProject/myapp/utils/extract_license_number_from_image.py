import io
import os
import subprocess
import re
import tempfile
from PIL import Image

def extract_text_using_tesseract(image):
    # Save the PIL Image to a temporary file
    with tempfile.NamedTemporaryFile(delete=False, suffix=".png") as temp_file:
        image.save(temp_file, format="PNG")
        temp_file_path = temp_file.name

    # Define the Tesseract command
    tesseract_command = f'tesseract "{temp_file_path}" stdout --tessdata-dir "C:/Program Files/Tesseract-OCR/tessdata"'

    # Run the command with the temporary image file and capture the output
    result = subprocess.run(tesseract_command, capture_output=True, text=True, shell=True)

    # Clean up the temporary file
    os.remove(temp_file_path)

    # Check for errors and return the output
    if result.returncode == 0:
        return result.stdout  # Return the extracted text
    else:
        return f"Error: {result.stderr}"

def extract_license_number_from_text(image):
    # Step 1: Use Tesseract to extract text
    tesseract_text = extract_text_using_tesseract(image)
    joined_text = re.sub(r'\s+', '', tesseract_text)
    # Step 2: Define regex pattern to find the license number in the extracted text
    license_pattern = r'[A-Z]{2}[0-9]{2}[0-9]{11}|[A-Z]{2}/\d{3}/\d{6}/\d{4}|[A-Z]{2}[0-9]{2}[A-Z]{1}[0-9]{11}'

    # Apply regex to the Tesseract text
    match = re.search(license_pattern, joined_text)

    if match:
        extracted_number = match.group()  # Extracted license number
        
        # Remove slashes if present
        cleaned_number = extracted_number.replace("/", "")
        return cleaned_number
    else:
        raise ValueError("License number not found From the text")
    
def extract_license_number_from_image(image_file):
    """
    This function handles the image file upload, converts it to a PIL image,
    and calls the extract_license_number_from_text function.
    """
    try:
        # Convert the uploaded image file to a PIL Image
        image = Image.open(image_file)
        
        # Extract the license number
        license_number = extract_license_number_from_text(image)
        return license_number
    
    except Exception as e:
        raise ValueError(f"Error processing the image: {str(e)}")
