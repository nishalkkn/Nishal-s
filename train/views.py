from django.shortcuts import render
from train.models import Train
# Create your views here.

def train_reg(request):
    if request.method=='POST':
        obj=Train()
        obj.train_name=request.POST.get('tname')
        obj.route=request.POST.get('loc')
        obj.train_name=request.POST.get('time')
        obj.save()
    return render(request,'train/train_reg.html')
