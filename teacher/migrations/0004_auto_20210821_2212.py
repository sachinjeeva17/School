# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2021-08-21 16:42
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('teacher', '0003_student'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='student',
            new_name='ad_student',
        ),
    ]
