from django.shortcuts import render
from rating.models import Rating
import datetime
# Create your views here.

def post_rating(request):
    if request.method == 'POST':
        obj= Rating()
        obj.rating = request.POST.get('rating')
        obj.review=request.POST.get('rv')
        obj.date = datetime.datetime.today()
        obj.time = datetime.datetime.now()
        obj.save()
    return render(request,'rating/rating.html')

def view_admin(request):
    obj=Rating.objects.all()
    context={
        'x':obj
    }
    return render(request,'rating/view review admin.html',context)

def view_hospital(request):
    obj=Rating.objects.all()
    context={
        'x':obj
    }
    return render(request,'rating/view review hospital.html',context)

