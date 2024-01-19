from django.shortcuts import render
from booking.models import Booking
from doctor.models import Doctor
# Create your views here.

def post_booking(request):
    obb=Doctor.objects.all()
    context={
        'x':obb
    }
    if request.method == 'POST':
        obj=Booking()
        obj.user_id = 1
        obj.doctor_id = request.POST.get('dr')
        obj.date = request.POST.get('date')
        obj.time = request.POST.get('time')
        obj.status = 'pending'
        obj.save()
    return render(request,'booking/booking.html',context)

def verify_pharmacy(request):
    obj=Booking.objects.all()
    context={
        'x':obj
    }
    return render(request,'booking/verify pharmacy booking.html',context)


def apprv(request,idd):
    obj=Booking.objects.get(booking_id=idd)
    obj.status='Approved'
    obj.save()
    return verify_pharmacy(request)

def rejct(request,idd):
    obj=Booking.objects.get(booking_id=idd)
    obj.status='Rejected'
    obj.save()
    return verify_pharmacy(request)

def view_booking(request):
    obj=Booking.objects.all()
    context={
        'x':obj
    }
    return render(request,'booking/view booking.html',context)
