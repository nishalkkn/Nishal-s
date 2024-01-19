from django.db import models
from doctor.models import Doctor
from user.models import User
# Create your models here.

class Appointment(models.Model):
    appointment_id = models.AutoField(primary_key=True)
    #     doctor_id = models.IntegerField()
    doctor=models.ForeignKey(Doctor, on_delete=models.CASCADE)
    # user_id = models.IntegerField()
    user=models.ForeignKey(User, on_delete=models.CASCADE)
    date = models.DateField()
    time = models.TimeField()
    status = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'appointment'



