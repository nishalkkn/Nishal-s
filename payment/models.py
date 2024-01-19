from django.db import models
from user.models import User
from order.models import Order

# Create your models here.


class Payment(models.Model):
    payment_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(User, on_delete=models.CASCADE)
    account_name = models.CharField(db_column='account name', max_length=25, blank=True, null=True)  # Field renamed to remove unsuitable characters.
    account_no = models.IntegerField(db_column='account no', blank=True, null=True)  # Field renamed to remove unsuitable characters.
    cvv = models.CharField(max_length=25, blank=True, null=True)
    amount = models.IntegerField(blank=True, null=True)
    time = models.TimeField()
    date = models.DateField()
    # order_id = models.IntegerField()
    order=models.ForeignKey(Order, on_delete=models.CASCADE)
    status = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'payment'




