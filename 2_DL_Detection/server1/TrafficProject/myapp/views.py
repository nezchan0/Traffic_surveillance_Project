from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Dldetails,Vehicledetails, Suspiciousvehicledetails, Generalpeopledetails, Suspiciouspersondetails, AlertTable
from .serializers import GeneralpeopledetailsSerializer, DldetailsSerializer, VehicledetailsSerializer, SuspiciouspersondetailsSerializer,SuspiciousvehicledetailsSerializer
from django.conf import settings
from django.urls import reverse
from django.http import FileResponse,JsonResponse
from django.shortcuts import get_object_or_404
import os
from .utils import extract_license_number_from_image as elnfi
import datetime
from django.shortcuts import render

def opening_page(request):
    siteurl=settings.SITE_URL
    return render(request, 'try.html',{'BaseSITEURL':siteurl})


from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Vehicledetails, Suspiciousvehicledetails, AlertTable
from .serializers import VehicledetailsSerializer, SuspiciousvehicledetailsSerializer
from django.conf import settings
import datetime

@api_view(['POST'])
def get_vehicle_details(request):
    try:
        # Retrieve the numberplate from the POST request data
        numberplate = request.data.get('numberplate')
        
        if not numberplate:
            return Response({"error": "Numberplate is required."}, status=400)
        
        if not Suspiciousvehicledetails.objects.filter(vehiclenumberplate__numberplate=numberplate).exists():
            return Response({"error": "Vehicle not found in suspicious vehicle details table."}, status=404)

        # Fetch vehicle details
        vehicle = Vehicledetails.objects.get(numberplate=numberplate)
        
        # Add logic to insert into AlertTable
        AlertTable.objects.create(
            vehicle=vehicle,
            time_detected=datetime.datetime.now()
        )

        # Fetch associated suspicious vehicle details
        suspicious_vehicles = Suspiciousvehicledetails.objects.filter(
            vehiclenumberplate__numberplate=numberplate
        ).select_related('vehiclenumberplate', 'owneraadhar_no')

        # Serialize the fetched data
        vehicle_serializer = VehicledetailsSerializer(vehicle)
        suspicious_vehicle_serializer = SuspiciousvehicledetailsSerializer(suspicious_vehicles, many=True)

        # Step 2: Find the associated owner's Aadhar number and construct face image path
        owner_aadhar = vehicle.owneraadhar_no.aadhar_no
        face_image_url = f"{settings.SITE_URL}/media/face_images/{owner_aadhar}.jpg"

        # Step 3: Combine all data into a single response
        response_data = {
            "vehicle_details": vehicle_serializer.data,
            "suspicious_vehicle_details": suspicious_vehicle_serializer.data,
            "face_image_url": face_image_url,
        }
        
        return Response(response_data)

    except Vehicledetails.DoesNotExist:
        return Response({"error": "Vehicle not found for the given numberplate."}, status=404)

@api_view(['POST'])
def get_data_from_license_image(request):
    try:
        # Step 1: Get the uploaded image
        image_file = request.FILES.get('dl_image')
        
        if not image_file:
            print("no image file")
            return Response({"error": "No image file provided."}, status=400)
        
        # Step 2: Extract license number from the image
        try:
            
            license_number = elnfi.extract_license_number_from_image(image_file)  # Call the helper function
        except ValueError as e:
            print("some error here")
            return Response({"error": str(e)}, status=400)
        
        # Step 3: logic to fetch details
        try:
            # Fetch the DL details
            dl_details = Dldetails.objects.get(licensenumber=license_number)
            
            # Fetch related data from Generalpeopledetails, Vehicledetails, and Suspiciouspersondetails
            owner_details = dl_details.owneraadhar_no
            vehicle_details = Vehicledetails.objects.get(owneraadhar_no=owner_details)
            
            # Fetch Suspiciouspersondetails, if they exist
            suspicious_person_details = Suspiciouspersondetails.objects.filter(personlicensenumber=dl_details)
            
            # Serialize the data
            owner_serializer = GeneralpeopledetailsSerializer(owner_details)
            dl_serializer = DldetailsSerializer(dl_details)
            vehicle_serializer = VehicledetailsSerializer(vehicle_details)
            suspicious_person_serializer = SuspiciouspersondetailsSerializer(suspicious_person_details, many=True)


            owner_aadhar = owner_details.aadhar_no
            face_image_url = f"{settings.SITE_URL}/media/face_images/{owner_aadhar}.jpg"
            
           
            # Combine the serialized data
            data = {
                'owner_details': owner_serializer.data,
                'dl_details': dl_serializer.data,
                'vehicle_details': vehicle_serializer.data,
                'suspicious_person_details': suspicious_person_serializer.data if suspicious_person_details.exists() else [],  # Ensure empty list if no records
                'face_image_url': face_image_url  # Add the face image URL
            }
            
            # Return the data as a response
            return Response(data)

        except Dldetails.DoesNotExist:
            return Response({"error": "No details found for the extracted license number."}, status=404)
        except Vehicledetails.DoesNotExist:
            return Response({"error": "No vehicle details found for the owner."}, status=404)

    except Exception as e:
        return Response({"error": f"An error occurred: {str(e)}"}, status=500)
