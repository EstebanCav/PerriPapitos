from django.db import models
from django.contrib.auth.models import User
# Create your models here.


#ES DONDE CREAMOS LAS TABLAS AQUI JAJAJA
class TipoProducto(models.Model):
    descripcion = models.CharField(max_length=50)

    def __str__(self):
        return self.descripcion

class Producto(models.Model):
    Nombre = models.CharField(max_length=50)
    precio = models.IntegerField()
    Stock = models.IntegerField()
    Descripcion = models.CharField(max_length=250)
    tipo = models.ForeignKey(TipoProducto, on_delete=models.CASCADE)
    Fecha_creacion = models.DateField()
    imagen = models.ImageField(null=True,blank=True)
    update_at = models.DateField(auto_now=True)
    def __str__(self):
        return self.Nombre
    class Meta:
        db_table = 'db_producto'

class item_carrito(models.Model):
    Nombre = models.CharField(max_length=50)
    precio = models.IntegerField()
    imagen = models.ImageField(null=True,blank=True)
    def __str__(self):
        return self.Nombre
    class Meta:
        db_table = 'db_item_carrito'

class Suscripcion(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    tipo_suscripcion = models.CharField(max_length=100)
    
    def __str__(self):
        return f'Suscripcion de {self.usuario.username}'
    class Meta:
        db_table = 'db_suscripcion'



