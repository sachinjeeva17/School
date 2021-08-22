from django.shortcuts import render, redirect

# Create your views here.
from student.models import registeration, FeedbackModel
from teacher.models import teach_reg, NotificationModel, upload_material, ad_student, TeacherModel


def Signup(request):#sign up for teacher
    if request.method=="POST" and request.FILES['file']:
        username=request.POST.get('name')
        pswd=request.POST.get('password')
        email=request.POST.get('email')
        mobile=request.POST.get('num')
        gender=request.POST.get('gender')
        file=request.FILES['file']
        teach_reg.objects.create(username=username,password=pswd,email=email,num=mobile,gender=gender,file=file)#insert query
    return render(request,'Teacher/Signup.html')
def login(request):#Authentication for  Teacher
    if request.method == "POST":
        usid = request.POST.get('uname')
        pswd = request.POST.get('pass')
        try:
            enter = teach_reg.objects.get(username=usid, password=pswd)#if username and password is correct
            request.session['userid'] = enter.id
            return redirect('add_student')# it redirect to teacher acount
        except:
            pass# else it won't move
    return render(request,'Teacher/login.html')
def userdetails(request):# in this function use list the student details
    list=registeration.objects.all()#select query to list the data
    return render(request, 'Teacher/userdetails.html',{'list1':list})
def viewfeedback(request):# used to list the student feedback
    obj = FeedbackModel.objects.all()
    return render(request,'Teacher/viewfeedback.html',{'object':obj})
def notification(request):# in this function we use ton give any notification to student
    if request.method=="POST":
        date=request.POST.get('date')
        notify=request.POST.get('message')
        NotificationModel.objects.create(date=date,notify=notify)#insert query
    return render(request,'Teacher/notification.html')
def upload(request):# In this function,we use upload study material to student
    if request.method == "POST" and request.FILES['upload']:
        name = request.POST.get('topic')
        upload = request.FILES['upload']
        description = request.POST.get('description')
        upload_material.objects.create(name=name,upload=upload,description=description)#insert query
    return render(request, 'Teacher/upload.html')
def add_student(request):# in this function we use add student ,Staff have full rights to add student
    if request.method=="POST":
        studentname = request.POST.get('studentname')
        clas = request.POST.get('class')
        date = request.POST.get('date')
        rno = request.POST.get('rno')
        gender = request.POST.get('gen')
        ad = request.POST.get('ad')
        ad_student.objects.create(studentname=studentname, clas=clas, date=date, rno=rno, gender=gender, ad=ad)#insert query
    return render(request, 'Teacher/add_student.html')

def leave(request):# apply leave for staff and approval of admin
    userid = request.session['userid']
    object = teach_reg.objects.get(id=userid)
    if request.method == "POST":
        day = request.POST.get('day')
        date= request.POST.get('date')
        reason= request.POST.get('reason')
        TeacherModel.objects.create(username=object, day=day,date=date,reason=reason)
    return render(request, 'Teacher/leave.html')
def feedbacks(request):# staff feedback
    userid = request.session['userid']
    object = teach_reg.objects.get(id=userid)
    if request.method == "POST":
        feeds = request.POST.get('feedback')
        TeacherModel.objects.create(username=object, feedback=feeds)
    return render(request, 'Teacher/feedbacks.html')


