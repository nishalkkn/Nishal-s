from django.conf.urls import url
from rating import views

urlpatterns = [
    url('post_rating/',views.post_rating),
    url('view_admin/',views.view_admin),
    url('view_hospital/',views.view_hospital),
]