# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2021-08-21 14:13
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='teach_reg',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=300)),
                ('password', models.CharField(max_length=300)),
                ('email', models.CharField(max_length=25)),
                ('num', models.CharField(max_length=15)),
                ('gender', models.CharField(max_length=15)),
                ('file', models.FileField(upload_to='')),
            ],
        ),
    ]
