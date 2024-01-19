from django.db import models
from pharmacy.models import Pharmacy
# Create your models here.

class Medicine(models.Model):
    medicine_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    description = models.CharField(max_length=25)
    price = models.IntegerField()
    # p_id = models.IntegerField()
    p=models.ForeignKey(Pharmacy, on_delete=models.CASCADE)



    class Meta:
        managed = False
        db_table = 'medicine'
