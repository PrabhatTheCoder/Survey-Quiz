# Generated by Django 5.1.1 on 2024-09-19 19:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('quizzes', '0002_remove_quiz_choice_text_multiple'),
    ]

    operations = [
        migrations.AddField(
            model_name='multiple',
            name='is_correct',
            field=models.BooleanField(default=False),
        ),
    ]