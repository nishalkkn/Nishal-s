from django.http import HttpResponseRedirect
from django.shortcuts import render
from pharmacy.models import Pharmacy
from login.models import Login
# Create your views here.

def mng_pharmacy(request):
    obj=Pharmacy.objects.all()
    context={
        'x':obj
    }
    return render(request,'pharmacy/mng_pharmacy.html',context)

def post_pharmacy(request):
    if request.method == 'POST':
        obj=Pharmacy()
        obj.name = request.POST.get('name')
        obj.address = request.POST.get('address')
        obj.phone_no = request.POST.get('phno')
        obj.password = request.POST.get('pwd')
        obj.email = request.POST.get('email')
        obj.save()

        obb = Login()
        obb.email = obj.email
        obb.password = obj.password
        obb.type = "pharmacy"
        obb.u_id = obj.p_id
        obb.save()

        return HttpResponseRedirect("/temp/admin/")
    return render(request,'pharmacy/pharmacy.html')

def view_pharmacy(request):
    obj=Pharmacy.objects.all()
    context={
        'x':obj
    }
    return render(request, 'pharmacy/user view pharmacy.html',context)

def update(request,idd):
    obb = Pharmacy.objects.get(p_id=idd)
    context = {
        'x':obb
    }
    if request.method == 'POST':
        obj =Pharmacy.objects.get(p_id=idd)
        obj.name = request.POST.get('name')
        obj.address = request.POST.get('address')
        obj.phone_no = request.POST.get('phno')
        obj.password = request.POST.get('pwd')
        obj.save()
    return render(request,'pharmacy/update.html',context)

def delete(request,idd):
    obj=Pharmacy.objects.get(p_id=idd)
    obj.delete()
    return mng_pharmacy(request)