from django.shortcuts import render

# Create your views here.

def admin(request):
    return  render(request,'temp/admin_home.html')

def delivery_boy(request):
    return  render(request,'temp/delivery_boys_home.html')

def doctor(request):
    return  render(request, 'temp/doctor_home.html')

def pharmacy(request):
    return  render(request,'temp/pharmacy home.html')

def user(request):
    return  render(request,'temp/user_home.html')

def admin_free(request):
    return  render(request,'temp/admin_free.html')

def del_boy_free(request):
    return  render(request,'temp/delivery_boy_free.html')

def dctr_fre(request):
    return  render(request,'temp/doctor_free.html')

def pharmcy_fre(request):
    return  render(request,'temp/pharmacy_free.html')

def user_freee(request):
    return  render(request,'temp/user_free.html')