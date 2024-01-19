from django.db import models
from user.models import User
from doctor.models import Doctor
# Create your models here.


class Prescription(models.Model):
    prescription_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(User, on_delete=models.CASCADE)
    time = models.TimeField()
    date = models.DateField()
    prescription = models.CharField(max_length=25)
    # doctor_id = models.IntegerField()
    doctor=models.ForeignKey(Doctor, on_delete=models.CASCADE)


    class Meta:
        managed = False
        db_table = 'prescription'

