from django.core.files.storage import FileSystemStorage
from django.http import HttpResponseRedirect
from django.shortcuts import render
from medicine.models import Medicine
# Create your views here.

def manage_medicine(request):
    obj=Medicine.objects.all()
    context={
        'x':obj
    }
    return render(request,'medicine/manage medicine.html',context)

def post_medicine(request):
    ss = request.session['u_id']
    if request.method == 'POST':
        obj=Medicine()
        obj.name = request.POST.get('name')
        obj.description = request.POST.get('details')
        obj.price=request.POST.get('price')
        obj.p_id = ss
        obj.save()
    return render(request,'medicine/medicine.html')

def update(request,idd):
    obj = Medicine.objects.get(medicine_id=idd)
    context = {
        'x': obj
    }
    if request.method == 'POST':
        obj=Medicine.objects.get(medicine_id=idd)
        obj.name = request.POST.get('name')
        obj.description = request.POST.get('details')
        obj.price=request.POST.get('price')
        obj.save()
        return HttpResponseRedirect('/medicine/manage_medicine/')
    return render(request,'medicine/update.html',context)

def delete(request,idd):
    obj=Medicine.objects.get(medicine_id=idd)
    obj.delete()
    return manage_medicine(request)


def view_order(request):
    obj=Medicine.objects.all()
    context={
        'x':obj
    }
    return render(request, 'medicine/view medicine order.html', context)


