from django.conf.urls import url
from doctor import views

urlpatterns = [
    url('mng_doctors/',views.mng_doctors),
    url('post_doctors/',views.post_doctors),
    url('update/(?P<idd>\w+)',views.update),
    url('delete/(?P<idd>\w+)',views.delete),
    url('view_dr/', views.view_dr)
]