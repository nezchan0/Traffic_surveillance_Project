from django.urls import path
from .views import get_vehicle_details, get_data_from_license_image, opening_page

urlpatterns = [
    path('vehicle-details/', get_vehicle_details, name='get_vehicle_details'),
    path('license-details/', get_data_from_license_image, name='get_data_from_license_image'),  # New 
    
]
