from django.db import models

# Create your models here.

class Rating(models.Model):
    rating_id = models.AutoField(primary_key=True)
    time = models.TimeField()
    date = models.DateField()
    rating = models.CharField(max_length=25)
    review = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'rating'

