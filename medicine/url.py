from django.conf.urls import url
from medicine import views

urlpatterns = [
    url('manage_medicine/',views.manage_medicine),
    url('post_medicine/',views.post_medicine),
    url('update/(?P<idd>\w+)',views.update),
    url('delete/(?P<idd>\w+)',views.delete),
    url('view_order/',views.view_order),
]