from django.conf.urls import url
from temp import views
urlpatterns=[
    url('admin/',views.admin),
    url('delivery_boy/', views.delivery_boy),
    url('doctor/', views.doctor),
    url('pharmacy/', views.pharmacy),
    url('user/', views.user),
    url('admn_free/', views.admin_free),
    url('del_boy_free/', views.del_boy_free),
    url('dctr_fre/', views.dctr_fre),
    url('dctr_fre/', views.dctr_fre),
    url('user_freeee/', views.user_freee),
]