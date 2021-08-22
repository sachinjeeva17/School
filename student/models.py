from django.db import models

# Create your models here.
class registeration(models.Model):
    id = models.AutoField(primary_key=True)
    fname = models.CharField(max_length=300)
    lname = models.CharField(max_length=300)
    user = models.CharField(max_length=300)
    password = models.CharField(max_length=300)
    email = models.CharField(max_length=25)
    num = models.CharField(max_length=15)
    gender = models.CharField(max_length=15)

class FeedbackModel(models.Model):
    username = models.ForeignKey(registeration)
    feedback = models.CharField(max_length=300)