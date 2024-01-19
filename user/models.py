from django.db import models

# Create your models here.


class User(models.Model):
    user_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    age = models.IntegerField()
    gender = models.CharField(max_length=25)
    address = models.CharField(max_length=60)
    phone_no = models.IntegerField(db_column='phone no')  # Field renamed to remove unsuitable characters.
    email = models.CharField(max_length=25)
    password = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'user'

