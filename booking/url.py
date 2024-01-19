from django.conf.urls import url
from booking import views

urlpatterns = [
    url('post_booking/',views.post_booking),
    url('verify_pharmacy/',views.verify_pharmacy),
    url('view_booking/',views.view_booking),
    url('apprv/(?P<idd>\w+)', views.apprv),
    url('rjctt/(?P<idd>\w+)', views.rejct),
]