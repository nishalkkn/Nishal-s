from django.shortcuts import render
from prescription.models import Prescription
import datetime
from user.models import User
# Create your views here.

def add_prescription(request):
    return render(request,'prescription/add prescription.html')

def post_prescription(request):
    ss = request.session['u_id']
    obb=User.objects.filter(appointment__doctor_id=ss)
    context={
        'x':obb
    }
    if request.method == 'POST':
        obj=Prescription()
        obj.prescription = request.POST.get('prescription')
        obj.user_id = request.POST.get('usr')
        obj.doctor_id=ss
        obj.date = datetime.datetime.today()
        obj.time = datetime.datetime.now()
        obj.save()
    return render(request,'prescription/prescription.html',context)

def view_prescription(request):
    obj=Prescription.objects.all()
    context={
        'x':obj
    }
    return render(request,'prescription/view and upload prescription.html',context)

def view_prescription_user(request):
    ss= request.session['u_id']
    obj=Prescription.objects.filter(user_id=ss)
    context={
        'x':obj
    }
    return render(request,'prescription/user view prescription.html',context)
