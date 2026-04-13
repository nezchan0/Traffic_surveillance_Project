# 🚀 Project Setup Guide

Follow the steps below to set up and run the project properly.

------------------------------------------------------------------------

## 🐍 Step 1: Create Virtual Environment

Create a virtual environment .

``` bash
python -m venv myevn
myevn\Scripts\activate
```

-   This will create and activate a Python virtual environment in your
    project directory.

------------------------------------------------------------------------

## 📦 Step 2: Install Dependencies

Install all required packages:

``` bash
pip install -r requirements.txt
```

------------------------------------------------------------------------

## 🔍 Step 3: Install Tesseract OCR

-   Install the **Tesseract Engine** on your system.
-   Update the correct configuration path in:
```
server/TrafficProject/myapp/utils/extract_license_number_from_image.py
```
    

------------------------------------------------------------------------

## ⚙️ Step 4: Configure Database

-   Open `settings.py`
-   Update database configurations (around **line 81**) according to
    your system setup.

------------------------------------------------------------------------

## 🗂️ Step 5: Add Dummy Data

Before running the server, populate the database:

-   Follow the steps in:

```
TrafficProject/1_DummyData/Importing_Dummy_Data.md
```
    


------------------------------------------------------------------------

## 🧱 Step 6: Run Migrations

Navigate to the project directory:

``` bash
cd server/TrafficProject
```

Run the following commands:

``` bash
python manage.py makemigrations
python manage.py migrate
```

> These commands ensure all database migrations are applied.

------------------------------------------------------------------------

## ▶️ Step 7: Run the Server

Start the Django development server:

``` bash
python manage.py runserver
```

------------------------------------------------------------------------

## 🌐 Step 8: Run Client Side

-   Start your frontend/client-side application.
-   Make sure to update the **API endpoint URL** in the client code to
    match the backend server.

------------------------------------------------------------------------

## 🔐 Step 9: Create Admin User (Optional)

To access Django admin panel:

``` bash
python manage.py createsuperuser
```

-   After creating the user, visit: http://127.0.0.1:8000/admin

-   You can view and manage database data from the admin interface.

------------------------------------------------------------------------

## ✅ Final Checklist

-   Virtual environment created & activated ✔️
-   Dependencies installed ✔️
-   Tesseract configured ✔️
-   Database configured ✔️
-   Dummy data added ✔️
-   Migrations applied ✔️
-   Server running ✔️
-   Client connected ✔️

------------------------------------------------------------------------