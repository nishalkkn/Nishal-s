from django.http import HttpResponseRedirect
from django.shortcuts import render
from user.models import User
# Create your views here.
from login.models import Login


def mng_user(request):
    obj=User.objects.all()
    context={
        'x':obj
    }
    return render(request,'user/mng user.html',context)

def post_user(request):
    if request.method == 'POST':
        obj=User()
        obj.name = request.POST.get('name')
        obj.address = request.POST.get('address')
        obj.phone_no = request.POST.get('phone')
        obj.password = request.POST.get('pwd')
        obj.age = request.POST.get('age')
        obj.gender = request.POST.get('gender')
        obj.email = request.POST.get('email')
        obj.save()

        obb = Login()
        obb.email = obj.email
        obb.password = obj.password
        obb.type = "user"
        obb.u_id = obj.user_id
        obb.save()
        return HttpResponseRedirect('/login/post_login/')
    return render(request,'user/user.html')

def view_user(request):
    obj=User.objects.all()
    context={
        'x':obj
    }
    return render(request,'user/view user.html',context)

def update(request,idd):
    obj = User.objects.get(user_id=idd)
    context = {
        'x': obj
    }
    if request.method == 'POST':
        obj.name = request.POST.get('name')
        obj.address = request.POST.get('address')
        obj.phone_no = request.POST.get('phone')
        obj.password = request.POST.get('pwd')
        obj.age = request.POST.get('age')
        obj.gender = request.POST.get('gender')
        obj.email = request.POST.get('email')
        obj.save()
    return render(request,'user/update.html',context)

def delete(request,idd):
    obj=User.objects.get(user_id=idd)
    obj.delete()
    return mng_user(request)