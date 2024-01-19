from django.db import models

# Create your models here.


class Doctor(models.Model):
    doctor_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    age = models.CharField(max_length=25)
    gender = models.CharField(max_length=25)
    specialization = models.CharField(max_length=25)
    experience = models.CharField(max_length=25)
    email = models.CharField(max_length=25)
    phone_no = models.IntegerField(db_column='phone no')  # Field renamed to remove unsuitable characters.
    password = models.CharField(max_length=25)
    address = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'doctor'

