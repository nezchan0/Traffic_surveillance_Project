from django.db import models


class Generalpeopledetails(models.Model):
    aadhar_no = models.CharField(max_length=12, unique=True)
    name = models.CharField(max_length=100)
    dob = models.DateField()
    address = models.CharField(max_length=255, blank=True, null=True)
    phone = models.CharField(max_length=15, blank=True, null=True)

    def __str__(self):
        return f"{self.name} (Aadhar: {self.aadhar_no})"

    class Meta:
        managed = False
        db_table = 'generalpeopledetails'


class Dldetails(models.Model):
    licensenumber = models.CharField(max_length=20, unique=True)
    owneraadhar_no = models.ForeignKey(
        Generalpeopledetails,
        on_delete=models.CASCADE,
        db_column='OwnerAadhar_no',
        to_field='aadhar_no'
    )
    licensetype = models.CharField(max_length=50, blank=True, null=True)
    issuedate = models.DateField()
    expirydate = models.DateField()

    def __str__(self):
        return f"DL: {self.licensenumber} (Owner: {self.owneraadhar_no.name})"

    class Meta:
        managed = False
        db_table = 'dldetails'


class Vehicledetails(models.Model):
    STATUS_CHOICES = [
        ('Valid', 'Valid'),
        ('Expired', 'Expired'),
    ]

    numberplate = models.CharField(max_length=15, unique=True)
    owneraadhar_no = models.ForeignKey(
        Generalpeopledetails,
        on_delete=models.CASCADE,
        db_column='OwnerAadhar_no',
        to_field='aadhar_no'
    )
    vehicletype = models.CharField(max_length=50, blank=True, null=True)
    registration_date = models.DateField()
    registration_status = models.CharField(max_length=7, choices=STATUS_CHOICES)
    insurance_status = models.CharField(max_length=7, choices=STATUS_CHOICES)
    puc_status = models.CharField(max_length=7, choices=STATUS_CHOICES)

    def __str__(self):
        return f"Vehicle: {self.numberplate} (Owner: {self.owneraadhar_no.name})"

    class Meta:
        managed = False
        db_table = 'vehicledetails'


class Suspiciousvehicledetails(models.Model):
    FELONY_CATEGORY_CHOICES = [
        ('Expired_Status', 'Expired Status'),
        ('Past_Felony', 'Past Felony'),
        ('Wanted', 'Wanted'),
    ]

    vehiclenumberplate = models.ForeignKey(
        Vehicledetails,
        on_delete=models.CASCADE,
        db_column='VehicleNumberPlate',
        to_field='numberplate'
    )
    owneraadhar_no = models.ForeignKey(
        Generalpeopledetails,
        on_delete=models.SET_NULL,
        db_column='OwnerAadhar_no',
        to_field='aadhar_no',
        blank=True,
        null=True
    )
    timehappened = models.DateTimeField()
    felony_catogory = models.CharField(max_length=14, choices=FELONY_CATEGORY_CHOICES)
    felony_type = models.CharField(max_length=25, blank=True, null=True)
    reasondetail = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return f"Suspicious Vehicle: {self.vehiclenumberplate.numberplate} ({self.felony_catogory})"

    class Meta:
        managed = False
        db_table = 'suspiciousvehicledetails'


class Suspiciouspersondetails(models.Model):
    FELONY_CATEGORY_CHOICES = [
        ('Expired_Status', 'Expired Status'),
        ('Past_Felony', 'Past Felony'),
        ('Wanted', 'Wanted'),
    ]

    personaadhar_no = models.ForeignKey(
        Generalpeopledetails,
        on_delete=models.CASCADE,
        db_column='PersonAadhar_no',
        to_field='aadhar_no'
    )
    personlicensenumber = models.ForeignKey(
        Dldetails,
        on_delete=models.SET_NULL,
        db_column='PersonLicenseNumber',
        to_field='licensenumber',
        blank=True,
        null=True
    )
    timehappened = models.DateTimeField()
    felony_catogry = models.CharField(max_length=14, choices=FELONY_CATEGORY_CHOICES)
    felony_type = models.CharField(max_length=25, blank=True, null=True)
    reasondetail = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return f"Suspicious Person: {self.personaadhar_no.name} ({self.felony_catogry})"

    class Meta:
        managed = False
        db_table = 'suspiciouspersondetails'

class AlertTable(models.Model):
    id = models.AutoField(primary_key=True)
    time_detected = models.DateTimeField()

    # Foreign key to Vehicledetails
    vehicle = models.ForeignKey(
        'Vehicledetails',  # The related model's name
        on_delete=models.CASCADE,
        to_field='numberplate',  # References the `numberplate` field in Vehicledetails
        db_column='Vehicle_Number_Plate'  # Maps to the SQL column name
    )

    def __str__(self):
        return f"Alert for Vehicle: {self.vehicle.numberplate} at {self.time_detected}"

    class Meta:
        managed = False
        db_table = 'AlertTable'  # Ensures the table name matches the MySQL table
