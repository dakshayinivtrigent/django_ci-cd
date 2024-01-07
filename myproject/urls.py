from django.contrib import admin
from django.urls import path
from myapp import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('greet',views.greet,name="Greet"),
    path('',views.sample,name="sample")
]
