from django.db import models

# Create your models here.
class teach_reg(models.Model):
    id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=300)
    password = models.CharField(max_length=300)
    email = models.CharField(max_length=25)
    num = models.CharField(max_length=15)
    gender = models.CharField(max_length=15)
    file=models.FileField()
class NotificationModel(models.Model):
    id = models.AutoField(primary_key=True)
    date = models.CharField(max_length=100)
    notify = models.CharField(max_length=300)
class upload_material(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=300)
    upload = models.FileField()
    description = models.CharField(max_length=25)

class ad_student(models.Model):
    id = models.AutoField(primary_key=True)
    studentname=models.CharField(max_length=100)
    clas = models.CharField(max_length=100)
    date = models.CharField(max_length=100)
    rno = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)
    ad = models.CharField(max_length=100)
class TeacherModel(models.Model):
    username = models.ForeignKey(teach_reg)
    feedback = models.CharField(max_length=300)
    day=models.IntegerField()
    date=models.CharField(max_length=100)
    reason=models.CharField(max_length=100)