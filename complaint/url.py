from django.conf.urls import url
from complaint import views

urlpatterns = [
    url('post_complaint/',views.post_complaint),
    url('post_reply/(?P<idd>\w+)',views.post_reply),
    url('view_complaintandreply/',views.view_complaintandreply),
    url('view_reply/',views.view_reply),
]