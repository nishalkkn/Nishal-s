from django.conf.urls import url
from payment import views

urlpatterns = [
    url('pst_pyment/(?P<idd>\w+)',views.post_payment),
    url('viw_and_pay/',views.view_and_pay),
    url('vew_paymnt/',views.view_payment),
]