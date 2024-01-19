from django.conf.urls import url
from delivery_agent import views

urlpatterns = [
    url('post_deliveryagent/',views.post_deliveryagent),
    url('mngDeliveryAgent/',views.mng_deliveryAgent),
    url('update/(?P<idd>\w+)',views.update),
    url('delete/(?P<idd>\w+)',views.delete),
]