from django.db import models

# Create your models here.


class Pharmacy(models.Model):
    p_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    address = models.CharField(max_length=60)
    phone_no = models.CharField(db_column='phone no', max_length=25)  # Field renamed to remove unsuitable characters.
    password = models.CharField(max_length=25)
    email = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'pharmacy'
