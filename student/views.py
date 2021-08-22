from django.shortcuts import render, redirect, get_object_or_404

# Create your views here.
from student.models import registeration, FeedbackModel


def index(request):#authentication for student via jwt authentication
    if request.method=="POST":
        usid=request.POST.get('username')
        pswd = request.POST.get('password')
        try:
            check = registeration.objects.get(user=usid,password=pswd)#if username and password is correct
            request.session['userid']=check.id
            return redirect('home')#its move to student homepage
        except:
            pass
    return render(request,'student/index.html')
def register(request):#signup for student
    if request.method == "POST":
        fname = request.POST.get('fname')
        lname = request.POST.get('lname')
        user = request.POST.get('user')
        password = request.POST.get('password')
        email = request.POST.get('email')
        num = request.POST.get('num')
        gender = request.POST.get('gender')
        registeration.objects.create(fname=fname, lname=lname, user=user, password=password, email=email, num=num, gender=gender)
        return redirect('index')
    return render(request,'student/register.html')
def home(request):
    return render(request,'student/home.html')
def mydetail(request):# in this function use view the student profile
    userid = request.session['userid']
    ted = registeration.objects.get(id=userid)
    return render(request, 'student/mydetail.html',{'object': ted})
def update(request):#in this function  update the studentdetail
    userid = request.session['userid']
    objec = registeration.objects.get(id=userid)
    if request.method == "POST":
        FirstName = request.POST.get('FirstName', '')
        LastName = request.POST.get('LastName', '')
        UserId = request.POST.get('UserId', '')
        Password = request.POST.get('Password', '')
        MobileNumber = request.POST.get('MobileNumber', '')
        EmailId = request.POST.get('EmailId', '')
        Gender = request.POST.get('Gender', '')

        obj = get_object_or_404(registeration, id=userid)
        obj.fname = FirstName
        obj.lname = LastName
        obj.user = UserId
        obj.password = Password
        obj.num = MobileNumber
        obj.email = EmailId
        obj.gender = Gender
#update query
        obj.save(update_fields=["fname", "lname","user", "password", "num", "email",
                                "gender", ])
        return redirect('mydetail')
    return render(request,'student/update.html',{'obj': objec})
def feedback(request):# student feedback
    userid = request.session['userid']
    object = registeration.objects.get(id=userid)#to get id from table
    if request.method == "POST":
        feed = request.POST.get('feedback')
        FeedbackModel.objects.create(username=object, feedback=feed)
    return render(request, 'student/feedback.html')
