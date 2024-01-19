from django.http import HttpResponseRedirect
from django.shortcuts import render
from assign_delivery_agent.models import AssignDeliveryAgent
from delivery_agent.models import DeliveryAgent
from order.models import Order
# Create your views here.

def post_assign(request):
    ss = request.session['u_id']
    obb=DeliveryAgent.objects.all()
    obb1=Order.objects.filter(medicine__p__p_id=ss)
    context={
        'x':obb,
        'y':obb1
    }
    if request.method == 'POST':
        obj=AssignDeliveryAgent()
        obj.agent_id = request.POST.get('ag')
        obj.order_id=request.POST.get('or')
        obj.status = 'pending'
        obj.save()
    return render(request,'assign_delivery_agent/assign_delivery_agent.html',context)

def post_delstatus(request,idd):
    obj = AssignDeliveryAgent.objects.get(assign_id=idd)
    context = {
        'x': obj
    }
    if request.method == 'POST':
        obj = AssignDeliveryAgent.objects.get(assign_id=idd)
        obj.status=request.POST.get('sts')
        obj.save()
        return HttpResponseRedirect("/assign_delivery_agent/view_assign/")
    return render(request,'assign_delivery_agent/Delivery status.html',context)

def view_assign(request):
    ss = request.session['u_id']
    obj=AssignDeliveryAgent.objects.filter(agent_id=ss)
    context={
        'x':obj
    }
    return render(request,'assign_delivery_agent/view assign.html',context)


def view_delstatus(request):
    ss = request.session['u_id']
    obj=AssignDeliveryAgent.objects.filter(order__medicine__p_id=ss)
    context={
        'x':obj
    }
    return render(request,'assign_delivery_agent/view delivery status.html',context)


def viw_datus_usr(request):
    ss=request.session['u_id']
    obj=AssignDeliveryAgent.objects.filter(order__user_id=ss)
    context={
        'x':obj
    }
    return render(request,'assign_delivery_agent/view_del_stats_usr.html',context)