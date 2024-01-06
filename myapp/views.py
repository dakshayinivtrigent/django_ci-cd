from django.shortcuts import render,HttpResponse

# Create your views here.

def sample(request):
    return render(request,"sample.html",{})

def greet(request):
    return HttpResponse("Happy New Year 2024")