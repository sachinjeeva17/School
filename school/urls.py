"""school URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.conf.urls.static import static
from django.contrib import admin

from school import settings
from student import views as view
from teacher import views as teach
from pageadmin import views as page
urlpatterns = [
    url(r'^admin/', admin.site.urls),
    #student
    url('^$', view.index, name="index"),
    url(r'^register/$', view.register, name="register"),
    url(r'^home/$', view.home, name="home"),
    url(r'^mydetail/$', view.mydetail, name="mydetail"),
    url(r'^update/$', view.update, name="update"),
    url(r'^feedback/$', view.feedback, name="feedback"),

    #teacher
    url(r'^Signup/$', teach.Signup, name="Signup"),
    url(r'^login/$', teach.login, name="login"),
    url(r'^upload/$', teach.upload, name="upload"),
    url(r'^userdetails/$', teach.userdetails, name="userdetails"),
    url(r'^viewfeedback/$', teach.viewfeedback, name="viewfeedback"),
    url(r'^notification/$', teach.notification, name="notification"),
    url(r'^add_student/$', teach.add_student, name="add_student"),
    url(r'^leave/$', teach.leave, name="leave"),
    url(r'^feedbacks/$', teach.feedbacks, name="feedbacks"),

    #superadmin

    url(r'^log/$', page.log, name="log"),
    url(r'^staff_list/$', page.staff_list, name="staff_list"),
    url(r'^view_leave/$', page.view_leave, name="view_leave"),
    url(r'^viewfed/$', page.viewfed, name="viewfed"),
    url(r'^add_staff/$', page.add_staff, name="add_staff"),
    url(r'^studentdetail/$', page.studentdetail, name="studentdetail"),
    url(r'^remove_staff/(?P<pk>\d+)/$', page.remove_staff, name="remove_staff"),
    url(r'^remove_student/(?P<pk>\d+)/$', page.remove_student, name="remove_student"),




]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
