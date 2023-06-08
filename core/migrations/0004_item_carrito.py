# Generated by Django 3.1.2 on 2023-05-20 18:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_auto_20230519_1605'),
    ]

    operations = [
        migrations.CreateModel(
            name='item_carrito',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Nombre', models.CharField(max_length=50)),
                ('precio', models.IntegerField()),
                ('imagen', models.ImageField(blank=True, null=True, upload_to='')),
            ],
            options={
                'db_table': 'db_carrito',
            },
        ),
    ]