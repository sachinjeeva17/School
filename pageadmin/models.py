from django.db import models

# Create your models here.
class ad_staff(models.Model):
    id = models.AutoField(primary_key=True)
    staffname=models.CharField(max_length=100)
    stream = models.CharField(max_length=100)
    date = models.CharField(max_length=100)
    school = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)
    experience = models.CharField(max_length=100)