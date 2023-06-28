from django.db import models
from django.contrib.auth.models import User
from django.contrib.auth import get_user_model
import random
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
    usuario = models.ForeignKey(User, on_delete=models.CASCADE, default=1)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE, default=None)
    items = models.IntegerField(default = 0)
    class Meta:
        db_table = 'db_item_carrito'
        
def generar_codigo():
    # Generar un código aleatorio de 10 dígitos
    codigo = ''.join(random.choices('0123456789', k=10))
    return codigo





class Pedido(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    items = models.IntegerField(default=0)
    precio_total = models.DecimalField(max_digits=10, decimal_places=2)
    fecha_compra = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.usuario.username} - {self.producto.Nombre}"

    class Meta:
        db_table = 'db_Pedido'

class HistorialCompra(models.Model):
    pedido = models.AutoField(primary_key=True, default= None)
    codigo = models.CharField( max_length=10, default=generar_codigo)
    compra = models.ForeignKey(Pedido, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.pedido} - {self.compra}"

    class Meta:
        db_table = 'db_historial_compra'


class TipoSuscripcion(models.Model):
    nombre = models.CharField(max_length=50)
    precio = models.IntegerField()

    def __str__(self):
        return self.nombre

    
class Suscripcion(models.Model):
    usuario  = models.OneToOneField(get_user_model(), on_delete=models.CASCADE, unique=True, related_name='suscripcion')
    suscripcion = models.ForeignKey(TipoSuscripcion, on_delete=models.CASCADE)

    def __str__(self):
        return self.usuario.username




