from django.shortcuts import render
from order.models import Order
from medicine.models import Medicine
from django.http import HttpResponseRedirect
# Create your views here.

def assign_order(request):
    return render(request,'order/Assign order.html')

def book_pharmacy(request):
    return render(request,'order/book pharmacy.html')

def post_order(request,idd):
    ss = request.session['u_id']
    obb=Medicine.objects.get(medicine_id=idd)
    context={
        'z':obb
    }
    if request.method == 'POST':
        obj=Order()
        obj.user_id = ss
        obj.medicine_id =idd
        obj.quantity = request.POST.get('quantity')
        obj.train_number=request.POST.get('train_num')
        obj.seat_no=request.POST.get('num')
        obj.status = 'pending'
        obj.save()
        # return HttpResponseRedirect('/payment/post_payment/')
    return render(request,'order/Order.html', context)


def view_order_payment(request):
    obj=Order.objects.all()
    context={
        'x':obj
    }
    return render(request,'order/order_payment.html',context)


def view_orders(request):
    ss = request.session['u_id']
    obb=Order.objects.filter(medicine__p__p_id=ss)
    context={
        'a':obb
    }
    return  render(request,'order/view_orders.html',context)


def accept(request,idd):
    obb=Order.objects.get(order_id=idd)
    obb.status = "Accepted"
    obb.save()
    return view_orders(request)


def reject(request,idd):
    obb=Order.objects.get(order_id=idd)
    obb.status = "Rejected"
    obb.save()
    return view_orders(request)


def view_accepted_ordes(request):
    ss = request.session['u_id']
    obb=Order.objects.filter(user_id=ss,status="Accepted")
    context={
        'a':obb
    }
    return  render(request,'order/view_accepted_orders.html',context)



