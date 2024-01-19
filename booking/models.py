from django.db import models
from user.models import User
from doctor.models import Doctor
# Create your models here.

class Booking(models.Model):
    booking_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(User, on_delete=models.CASCADE)
    # doctor_id = models.IntegerField()
    doctor=models.ForeignKey(Doctor, on_delete=models.CASCADE)
    date = models.DateField()
    time = models.TimeField()
    status = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'booking'

