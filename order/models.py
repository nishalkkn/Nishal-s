from django.db import models
from user.models import User
from medicine.models import Medicine
from pharmacy.models import Pharmacy

# Create your models here.


class Order(models.Model):
    order_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(User, on_delete=models.CASCADE)
    # medicine_id = models.IntegerField()
    medicine=models.ForeignKey(Medicine, on_delete=models.CASCADE)
    status = models.CharField(max_length=11)
    quantity = models.IntegerField()
    seat_no = models.CharField(max_length=20)
    amount = models.CharField(max_length=45, blank=True, null=True)
    train_number = models.CharField(max_length=45)



    class Meta:
        managed = False
        db_table = 'order'




