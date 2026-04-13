from django.contrib import admin
from .models import AlertTable, Dldetails, Generalpeopledetails, Suspiciouspersondetails, Suspiciousvehicledetails, Vehicledetails

admin.site.register(AlertTable)
admin.site.register(Dldetails)
admin.site.register(Generalpeopledetails)
admin.site.register(Suspiciouspersondetails)
admin.site.register(Suspiciousvehicledetails)
admin.site.register(Vehicledetails)
