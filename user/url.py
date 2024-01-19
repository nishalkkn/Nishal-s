from django.conf.urls import url
from user import views

urlpatterns = [
    url('mng_user/',views.mng_user),
    url('post_user/',views.post_user),
    # url('view_pharmacy/',views.),
    url('view_user/',views.view_user),
    url('update/(?P<idd>\w+)',views.update),
    url('delete/(?P<idd>\w+)',views.delete),
]