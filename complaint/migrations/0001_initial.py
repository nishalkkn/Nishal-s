# Generated by Django 3.2.21 on 2024-01-15 11:13

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Complaint',
            fields=[
                ('complaint_id', models.AutoField(primary_key=True, serialize=False)),
                ('complaint', models.CharField(max_length=100)),
                ('reply', models.CharField(max_length=100)),
                ('date', models.DateField()),
            ],
            options={
                'db_table': 'complaint',
                'managed': False,
            },
        ),
    ]