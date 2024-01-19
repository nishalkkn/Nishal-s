from django.shortcuts import render
from appointment.models import Appointment
# Create your views here.

def post_appoint(request,idd):
    ss = request.session['u_id']

    if request.method == 'POST':
        obj = Appointment()
        obj.date = request.POST.get('date')
        obj.time = request.POST.get('time')
        obj.doctor_id = idd
        obj.user_id = ss
        obj.save()
    return render(request, 'appointment/appointment.html')

def view_drappoint(request):
    ss = request.session['u_id']
    obj=Appointment.objects.filter(doctor_id=ss)
    context={
        'x':obj
    }
    return render(request,'appointment/doctor view appointment.html',context)

def verify_vrappoint(request):
    obj=Appointment.objects.all()
    context={
        'x':obj
    }
    return render(request,'appointment/verify appointment.html',context)


def apprv(request,idd):
    obj=Appointment.objects.get(appointment_id=idd)
    obj.status='Approved'
    obj.save()
    return verify_vrappoint(request)

def reject(request,idd):
    obj=Appointment.objects.get(appointment_id=idd)
    obj.status='rejected'
    obj.save()
    return verify_vrappoint(request)


def viw_appnt_usr(request):
    ss = request.session['u_id']
    obj=Appointment.objects.filter(user_id=ss,status="Approved")
    context={
        'x':obj
    }
    return render(request,'appointment/view_approved_appoinments.html',context)

