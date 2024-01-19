from django.http import HttpResponseRedirect
from django.shortcuts import render
from login.models import Login
# Create your views here.

def post_login(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        passw = request.POST.get('password')
        obj = Login.objects.filter(email=email, password=passw)
        typ = " "
        for var in obj:
            typ = var.type
            uid = var.u_id
            if typ == "user":
                request.session['u_id'] = uid
                return HttpResponseRedirect('/temp/user/')
            elif typ == "admin":
                request.session['u_id'] = uid
                return HttpResponseRedirect('/temp/admin/')
            elif typ == "pharmacy":
                request.session['u_id'] = uid
                return HttpResponseRedirect('/temp/pharmacy/')
            elif typ == "doctor":
                request.session['u_id'] = uid
                return HttpResponseRedirect('/temp/doctor/')
            elif typ == "delivery_boy":
                request.session['u_id'] = uid
                return HttpResponseRedirect('/temp/delivery_boy/')
            else:
                objlist = "Incorrect email or password.. try again!!!..."
                context = {
                    'msg': objlist,
                }
            return render(request, 'login/login.html', context)
    return render(request,'login/login.html')