#vamos a crear un formulario que se reutiliza al agregar y actualizar.
from django import forms
from django.forms import ModelForm
from .models import *

class ProductoForm(ModelForm):
    Nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre"}))
    precio = forms.IntegerField(min_value=1,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Precio"}))
    Stock = forms.IntegerField(min_value=1,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Stock"}))
    Descripcion = forms.CharField(min_length=10,max_length=200,widget=forms.Textarea(attrs={"rows":4}))

	


    class Meta:
        model = Producto
        #fields = ['Nombre','precio','Stock','Descripcion','tipo',]
        fields = '__all__'
        widgets = {
            'Fecha_creacion' : forms.SelectDateWidget(years=range(1940,20024))
        }
        