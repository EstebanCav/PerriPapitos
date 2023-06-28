# Generated by Django 3.1.2 on 2023-06-27 23:54

import core.models
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='TipoProducto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descripcion', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='TipoSuscripcion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('precio', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Suscripcion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('suscripcion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.tiposuscripcion')),
                ('usuario', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, related_name='suscripcion', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Nombre', models.CharField(max_length=50)),
                ('precio', models.IntegerField()),
                ('Stock', models.IntegerField()),
                ('Descripcion', models.CharField(max_length=250)),
                ('Fecha_creacion', models.DateField()),
                ('imagen', models.ImageField(blank=True, null=True, upload_to='')),
                ('update_at', models.DateField(auto_now=True)),
                ('tipo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.tipoproducto')),
            ],
            options={
                'db_table': 'db_producto',
            },
        ),
        migrations.CreateModel(
            name='Pedido',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('items', models.IntegerField(default=0)),
                ('precio_total', models.DecimalField(decimal_places=2, max_digits=10)),
                ('fecha_compra', models.DateTimeField(auto_now_add=True)),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.producto')),
                ('usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'db_Pedido',
            },
        ),
        migrations.CreateModel(
            name='item_carrito',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('items', models.IntegerField(default=0)),
                ('producto', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='core.producto')),
                ('usuario', models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'db_item_carrito',
            },
        ),
        migrations.CreateModel(
            name='HistorialCompra',
            fields=[
                ('pedido', models.AutoField(default=None, primary_key=True, serialize=False)),
                ('codigo', models.CharField(default=core.models.generar_codigo, max_length=10)),
                ('compra', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.pedido')),
            ],
            options={
                'db_table': 'db_historial_compra',
            },
        ),
    ]
