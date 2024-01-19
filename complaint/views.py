from django.http import HttpResponseRedirect
from django.shortcuts import render
from complaint.models import Complaint
import datetime
# Create your views here.

def post_complaint(request):
    ss=request.session['u_id']
    if request.method == 'POST':
        obj=Complaint()
        obj.user_id = ss
        obj.complaint = request.POST.get('complaint')
        obj.date = datetime.datetime.today()
        # obj.time = datetime.datetime.now()
        obj.reply = 'pending'
        obj.save()
    return render(request,'complaint/complaint.html')

def post_reply(request,idd):
    if request.method=='POST':
        obj=Complaint.objects.get(complaint_id=idd)
        obj.reply=request.POST.get('reply')
        obj.save()
        return HttpResponseRedirect("/complaint/view_complaintandreply/")
    return render(request,'complaint/reply.html')

def view_complaintandreply(request):
    obj=Complaint.objects.all()
    context={
        'x':obj
    }
    return render(request,'complaint/view complaint and reply.html',context)

def view_reply(request):
    ss=request.session['u_id']
    obj=Complaint.objects.filter(user_id=ss)
    context={
        'x':obj
    }
    return render(request,'complaint/view reply.html',context)