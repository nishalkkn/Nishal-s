from django.shortcuts import render
from doctor.models import Doctor
from  login.models import  Login
# Create your views here.

def post_doctors(request):
    if request.method == 'POST':
        obj=Doctor()
        obj.address = request.POST.get('aa')
        obj.age = request.POST.get('age')
        obj.address = request.POST.get('address')
        obj.email = request.POST.get('email')
        obj.experience = request.POST.get('experience')
        obj.gender = request.POST.get('gender')
        obj.name = request.POST.get('name')
        obj.password = request.POST.get('password')
        obj.phone_no = request.POST.get('phone')
        obj.specialization = request.POST.get('specialization')
        obj.save()

        obb = Login()
        obb.email = obj.email
        obb.password = obj.password
        obb.type = "doctor"
        obb.u_id = obj.doctor_id
        obb.save()

    return render(request,'doctor/doctors.html')

def mng_doctors(request):
    obj=Doctor.objects.all()
    context={
        'x':obj
    }
    return render(request,'doctor/manage doctors.html',context)

def update(request,idd):
    obj = Doctor.objects.get(doctor_id=idd)
    context = {
        'x': obj
    }
    if request.method == 'POST':
        obj = Doctor.objects.get(doctor_id=idd)
        obj.address = request.POST.get('aa')
        obj.age = request.POST.get('age')
        obj.email = request.POST.get('email')
        obj.experience = request.POST.get('experience')
        obj.gender = request.POST.get('gender')
        obj.name = request.POST.get('name')
        obj.password = request.POST.get('password')
        obj.phone_no = request.POST.get('phone')
        obj.specialization = request.POST.get('specialization')
        obj.save()
    return render(request,'doctor/update.html',context)

def delete(request,idd):
    obj=Doctor.objects.get(doctor_id=idd)
    obj.delete()
    return mng_doctors(request)


def view_dr(request):
    obj=Doctor.objects.all()
    context={
        'x':obj
    }
    return render(request,'doctor/view_dr.html',context)