#NOS VA A PERMITIR CONVERTIR LA DATA JOJOJOJOJOJOJOJOJOJOJJOJ
from .models import *
from rest_framework import serializers

class TipoProductoSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoProducto
        fields ='__all__'


class ProductoSerializer(serializers.ModelSerializer):
    tipo = TipoProductoSerializer(read_only=True)
    class Meta:
        model = Producto
        fields ='__all__'

