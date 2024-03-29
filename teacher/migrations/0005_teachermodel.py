# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2021-08-21 18:08
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('teacher', '0004_auto_20210821_2212'),
    ]

    operations = [
        migrations.CreateModel(
            name='TeacherModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('feedback', models.CharField(max_length=300)),
                ('day', models.IntegerField(max_length=100)),
                ('date', models.CharField(max_length=100)),
                ('reason', models.CharField(max_length=100)),
                ('username', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='teacher.teach_reg')),
            ],
        ),
    ]
