from django.shortcuts import render, redirect


# Create your views here.
from pageadmin.models import ad_staff
from student.models import registeration
from teacher.models import teach_reg, TeacherModel


def log(request):#in this log is admin login
    if request.method == "POST":
        if request.method == "POST":
            usid = request.POST.get('username')
            pswd = request.POST.get('password')
            if usid == 'admin' and pswd == 'admin':# default wu use admin username and password
                return redirect('staff_list') #redirect Returns an HttpResponseRedirect i.e it can change the path
    return render(request,'pageadmin/log.html')

def staff_list(request):#In this function use all staff list can be displayed
    list = teach_reg.objects.all()# query for select it use display all the data
    return render(request, 'pageadmin/staff_list.html', {'list1': list})

def remove_staff(request,pk):#in this function use remove staff list
    del1 = teach_reg.objects.get(id=pk)
    deleteid = del1.id
    print(deleteid)
    teach_reg.objects.filter(id=deleteid).delete()#delete query
    return redirect('staff_list')

def view_leave(request):#list teacher leave how many days take leave
    obj = TeacherModel.objects.all()#select query
    return render(request,'pageadmin/view_leave.html',{'object':obj})

def viewfed(request):#teacher feedback list
    obj = TeacherModel.objects.all()#selct query
    return render(request, 'pageadmin/viewfed.html', {'object': obj})

def add_staff(request):# in this function ,Admin can add staff
    if request.method=="POST":#To get the detail from admin to server, api can use this client and server....
        staffname = request.POST.get('sname')#post method to use securely transfer to database
        stream = request.POST.get('stream')
        date = request.POST.get('date')
        school = request.POST.get('school')
        gender = request.POST.get('gen')
        experience = request.POST.get('exp')
        ad_staff.objects.create(staffname=staffname, stream=stream, date=date, school=school, gender=gender, experience=experience)#insert query
    return render(request,'pageadmin/add_staff.html')

def studentdetail(request):#in this function, list the student detail
    list=registeration.objects.all()#select query
    return render(request, 'pageadmin/studentdetail.html',{'list1':list})

def remove_student(request,pk):# admin can remove student detail
    del1 = registeration.objects.get(id=pk)
    deleteid = del1.id
    print(deleteid)
    registeration.objects.filter(id=deleteid).delete()
    return redirect('studentdetail')
