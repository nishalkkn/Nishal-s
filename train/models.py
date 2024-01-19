from django.db import models

# Create your models here.

class Train(models.Model):
    train_id = models.AutoField(primary_key=True)
    train_name = models.CharField(max_length=20)
    route = models.CharField(max_length=60)
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'train'

