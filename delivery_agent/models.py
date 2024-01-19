from django.db import models

# Create your models here.


class DeliveryAgent(models.Model):
    agent_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    age = models.IntegerField()
    gender = models.CharField(max_length=25)
    phone_no = models.CharField(db_column='phone no', max_length=25)  # Field renamed to remove unsuitable characters.
    email = models.CharField(max_length=25)
    password = models.CharField(max_length=25)
    address = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'delivery_agent'

