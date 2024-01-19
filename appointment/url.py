from django.conf.urls import url
from appointment import views

urlpatterns=[
    url('post_appoint/(?P<idd>\w+)',views.post_appoint),
    url('verify_vrappoint/',views.verify_vrappoint),
    url('view_drappoint/',views.view_drappoint),
    url('apprv/(?P<idd>\w+)', views.apprv),
    url('reject/(?P<idd>\w+)',views.reject),
    url('viw_appnt_usr/', views.viw_appnt_usr),\
]