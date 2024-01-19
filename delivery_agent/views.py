from django.http import HttpResponseRedirect
from django.shortcuts import render
from delivery_agent.models import DeliveryAgent
from login.models import Login
# Create your views here.

def post_deliveryagent(request):
    if request.method == 'POST':
        obj = DeliveryAgent()
        obj.name = request.POST.get('name')
        obj.phone_no = request.POST.get('phone')
        obj.password = request.POST.get('pwd')
        obj.gender = request.POST.get('gender')
        obj.address = request.POST.get('address')
        obj.email = request.POST.get('email')
        obj.age = request.POST.get('age')
        obj.save()

        obb = Login()
        obb.email = obj.email
        obb.password = obj.password
        obb.type = "delivery_boy"
        obb.u_id = obj.agent_id
        obb.save()
        return HttpResponseRedirect("/temp/admin/")
    return render(request,'delivery_agent/delivery agent.html')

def mng_deliveryAgent(request):
    obj=DeliveryAgent.objects.all()
    context={
        'x':obj
    }
    return render(request,'delivery_agent/mng_deliveryAgent.html',context)

def update(request,idd):
    obj = DeliveryAgent.objects.get(agent_id=idd)
    context = {
        'x': obj
    }
    if request.method == 'POST':

        obj.name = request.POST.get('name')
        obj.phone_no = request.POST.get('phone')
        obj.password = request.POST.get('pwd')
        obj.gender = request.POST.get('gender')
        obj.email = request.POST.get('email')
        obj.address = request.POST.get('address')
        obj.age = request.POST.get('age')
        obj.save()
    return render(request,'delivery_agent/update.html',context)

def delete(request,idd):
    obj=DeliveryAgent.objects.get(agent_id=idd)
    obj.delete()
    return mng_deliveryAgent(request)