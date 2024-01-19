from django.conf.urls import url
from order import views

urlpatterns=[
    url('assign_order/',views.assign_order),
    url('book_pharmacy/',views.book_pharmacy),
    url('post_order/(?P<idd>\w+)',views.post_order),
    url('view_order_payment/', views.view_order_payment),
    url('view_orders/',views.view_orders),
    url('accept/(?P<idd>\w+)', views.accept),
    url('reject/(?P<idd>\w+)', views.reject),
    url('viw_acc_orrs/', views.view_accepted_ordes),

]