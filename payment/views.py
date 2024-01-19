from django.shortcuts import render
from payment.models import Payment
import datetime
from order.models import Order
# Create your views here.

def post_payment(request,idd):
    ss=request.session['u_id']
    obb = Order.objects.get(order_id=idd)
    context = {
        'z': obb
    }
    if request.method == 'POST':
        obj=Payment()
        obj.amount=request.POST.get('amount')
        obj.user_id = ss
        obj.date = datetime.datetime.today()
        obj.order_id=idd
        obj.status = "paid"
        obj.time = datetime.datetime.now()
        obj.save()
    return render(request,'payment/payment.html',context)

def view_and_pay(request):
    obj=Payment.objects.all()
    context={
        'x':obj
    }
    return render(request,'payment/view and pay.html',context)

def view_payment(request):
    ss = request.session['u_id']
    obj=Payment.objects.filter(order__medicine__p_id=ss)
    context={
        'x':obj
    }
    return render(request,'payment/view payment.html',context)

