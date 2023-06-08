from django.shortcuts import render,redirect
from .models import * #asi llamamos a todos los models
from .forms import *
from django.contrib import messages
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
from .serializers import *
from rest_framework import viewsets
import requests

#NOS PERMITE MOSTRAR LA INFO
class ProductoViewset(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    #queryset = Producto.objects.filter(tipo=1)
    serializer_class = ProductoSerializer

class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    #queryset = Producto.objects.filter(tipo=1)
    serializer_class = TipoProductoSerializer


# Create your views here.
def index(request):
    productosAll = Producto.objects.all()#SELECT * FROM producto
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productosAll, 3)
        productosAll = paginator.page(page)
    except:
        raise Http404

    data = {
        'listado': productosAll,
        'paginator': paginator
    }

    if request.method == 'POST':
        Carrito = item_carrito()
        Carrito.Nombre = request.POST.get('nombre_producto')
        Carrito.precio = request.POST.get('precio_producto')
        Carrito.imagen = request.POST.get('imagen_producto')
        Carrito.save()
        
    return render(request,'core/index.html', data)

def indexapi(request):
    #OBTIENE LOS DATOS DEL API
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    respuesta2 = requests.get('https://mindicador.cl/api')
    respuesta3 = requests.get('https://rickandmortyapi.com/api/character')
    #TRANSFORMAR EL JSON
    productos = respuesta.json()
    monedas = respuesta2.json()
    aux = respuesta3.json()
    personajes = aux['results']

    data = {
        'listado': productos,
        'monedas': monedas,
        'personajes':personajes,
    }

   
    return render(request,'core/indexapi.html', data)  


    

#CRUD

def Registrar(request):

    return render(request, 'registration/Registrar.html')

@login_required
def add(request):
    data={
        'form' : ProductoForm()
    }
    if request.method =='POST':
        formulario = ProductoForm(request.POST, files=request.FILES)#OBTIENE LA DATA DEL FORMULARIO
        if formulario.is_valid():
            formulario.save() #INSERT INTO...........
            #data['msj']="Producto guardado correctamente"
            messages.success(request, "Producto almacenado correctamente")

    return render(request,'core/add-product.html', data)
@login_required
def update(request, id):
    producto = Producto.objects.get(id=id) #OBTIENE UN PRODUCTO POR EL ID
    data={
        'form' : ProductoForm(instance=producto, )#CARGAMOS EL PRODUCTO POR EL ID
    }
    if request.method =='POST':
        formulario = ProductoForm(data=request.POST, instance=producto, files=request.FILES)#OBTIENE LA DATA DEL FORMULARIO
        if formulario.is_valid():
            formulario.save() #INSERT INTO...........
            #data['msj']="Producto modificado correctamente"
            messages.success(request, "Producto almacenado correctamente")
            data['form']=formulario #carga la nueva infor en el formulario

    return render(request,'core/add-product.html', data)

@login_required
def delete(request,id):
    producto = Producto.objects.get(id=id) #OBTIENE UN PRODUCTO POR EL ID
    producto.delete()

    return redirect(to='index')

def Carrito(request):
    Carrito = item_carrito.objects.all()
    total_precio = sum(item.precio for item in Carrito)

    data={
        'listaCarrito' : Carrito,
        'total_precio' : total_precio
    }

    if request.method == 'POST':
        Carrito = item_carrito()
        Carrito.Nombre = request.POST.get('nombre_producto')
        Carrito.precio = request.POST.get('precio_producto')
        Carrito.imagen = request.POST.get('imagen_producto')
        Carrito.save()

    return render(request,'core/Carrito.html',data)

def eliminarCarro(request, id):
    Carrito = item_carrito.objects.get(id=id)
    Carrito.delete()
    return redirect("Carrito")

def Contact(request):
    return render(request,'core/Contact.html')

def Pagar(request):
    Carrito = item_carrito.objects.all()
    total_precio = sum(item.precio for item in Carrito)


    data={
        'listaCarrito' : Carrito,
        'total_precio' : total_precio
    }
    #logica de sumar los precios del carrito
    respuesta = requests.get('https://mindicador.cl/api/dolar').json()
    valor_usd = respuesta['serie'][0]['valor']

    valor_Carrito = total_precio
    valor_total = valor_Carrito/valor_usd

    data = {

        'valor': round(valor_total, 2)
    }

    return render(request,'core/Pagar.html',data)
    



def team(request):
    productosAll = Producto.objects.all()#SELECT * FROM producto
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1ç

    
    try:
        paginator = Paginator(productosAll, 9)
        productosAll = paginator.page(page)
    except:
        raise Http404

    data = {
        'listado': productosAll,
        'paginator': paginator
    }

    if request.method == 'POST':
        Carrito = item_carrito()
        Carrito.Nombre = request.POST.get('nombre_producto')
        Carrito.precio = request.POST.get('precio_producto')
        Carrito.imagen = request.POST.get('imagen_producto')
        Carrito.save()

    return render(request,'core/team.html', data)

    ##suscripcion

def suscribirse(request):

    return render(request, 'core/suscribirse.html')

def Finalcompra(request):
    Carrito = item_carrito.objects.all()
    Carrito.delete()


    return render(request,'core/Carrito.html')    

def FinalSuscripcion(request):

    return render(request,'core/index.html')    

        

def Pagar_suscripcion(request):

    return render(request,'core/Pagar_suscripcion.html')

#Variables para susc
def Varisus(request):



    data = {
        'variable': variable,
    }

    return render(request, 'core/team.html', data)