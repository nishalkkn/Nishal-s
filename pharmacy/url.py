from django.conf.urls import url
from pharmacy import views

urlpatterns = [
    url('mng_pharmacy/',views.mng_pharmacy),
    url('post_pharmacy/',views.post_pharmacy),
    url('view_pharmacy/',views.view_pharmacy),
    url('update/(?P<idd>\w+)',views.update),
    url('delete/(?P<idd>\w+)',views.delete),
]