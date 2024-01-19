from django.db import models
from delivery_agent.models import DeliveryAgent
from order.models import Order
# Create your models here.

class AssignDeliveryAgent(models.Model):
    assign_id = models.AutoField(primary_key=True)
    # agent_id = models.IntegerField()
    agent=models.ForeignKey(DeliveryAgent, on_delete=models.CASCADE)
    status = models.CharField(max_length=25)
    # order_id = models.IntegerField()
    order=models.ForeignKey(Order, on_delete=models.CASCADE)

    class Meta:
        managed = False
        db_table = 'assign_delivery_agent'




