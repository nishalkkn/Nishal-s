from django.conf.urls import url
from prescription import views

urlpatterns = [
    url('add_prescription/',views.add_prescription),
    url('post_prescription/',views.post_prescription),
    url('view_prescription/',views.view_prescription),
    url('v_presn/', views.view_prescription_user),
]