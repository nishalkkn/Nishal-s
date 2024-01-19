from django.conf.urls import url
from train import views

urlpatterns=[
    url('train_reg/',views.train_reg)
]