from django.conf.urls import url
from assign_delivery_agent import views

urlpatterns = [
    url('post_assign/',views.post_assign),
    url('post_delstatus/(?P<idd>\w+)',views.post_delstatus),
    url('view_assign/',views.view_assign),
    url('view_delstatus/',views.view_delstatus),
    url('viw_desaxs_usr/', views.viw_datus_usr),

]