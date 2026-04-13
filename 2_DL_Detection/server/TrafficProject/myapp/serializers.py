from rest_framework import serializers
from .models import Generalpeopledetails, Dldetails, Vehicledetails, Suspiciousvehicledetails, Suspiciouspersondetails

class GeneralpeopledetailsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Generalpeopledetails
        fields = '__all__'

class DldetailsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Dldetails
        fields = '__all__'

class VehicledetailsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Vehicledetails
        fields = '__all__'

class SuspiciousvehicledetailsSerializer(serializers.ModelSerializer):
    vehiclenumberplate = VehicledetailsSerializer()
    owneraadhar_no = GeneralpeopledetailsSerializer()

    class Meta:
        model = Suspiciousvehicledetails
        fields = '__all__'

class SuspiciouspersondetailsSerializer(serializers.ModelSerializer):
    personaadhar_no = GeneralpeopledetailsSerializer()
    personlicensenumber = DldetailsSerializer()

    class Meta:
        model = Suspiciouspersondetails
        fields = '__all__'
