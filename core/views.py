from django.shortcuts import render,redirect
from .models import * #asi llamamos a todos los models
from .forms import *
from django.contrib import messages
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required, user_passes_test
from .serializers import *
from rest_framework import viewsets
import requests
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import Group
from decimal import Decimal
from django.http import HttpResponse

#FUNCION GENERICA QUE VALIDA EL GRUPO DEL USUARIO
def grupo_requerido(nombre_grupo):
    def decorator(view_fuc):
        @user_passes_test(lambda user: user.groups.filter(name=nombre_grupo).exists())
        def wrapper(request, *arg, **kwargs):
            return view_fuc(request, *arg, **kwargs)
        return wrapper
    return decorator

#@grupo_requerido('vendedor')
# CUANDO CREAN EN USUARIO LO ASIGNA INMEDIATAMENTE AL GRUPO
# grupo = Group.objects.get(name='usuario')
# user.groups.add(grupo)

#NOS PERMITE MOSTRAR LA INFO
class ProductoViewset(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    #queryset = Producto.objects.filter(tipo=1)
    serializer_class = ProductoSerializer

class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    #queryset = Producto.objects.filter(tipo=1)
    serializer_class = TipoProductoSerializer

class TipoSuscripcionViewset(viewsets.ModelViewSet):
    queryset = TipoSuscripcion.objects.all()
    #queryset = Producto.objects.filter(tipo=1)
    serializer_class = TipoSuscripcionSerializer

class SuscripcionViewset(viewsets.ModelViewSet):
    queryset = Suscripcion.objects.all()
    #queryset = Producto.objects.filter(tipo=1)
    serializer_class = SuscripcionSerializer


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
@grupo_requerido('vendedor')
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
    data = {
        'form': CustomUserCreationForm()
    }

    if request.method =='POST':
        formulario = CustomUserCreationForm(data=request.POST)
        if formulario.is_valid():
            formulario.save()
            user = authenticate(username=formulario.cleaned_data["username"], password=formulario.cleaned_data["password1"])
            grupo = Group.objects.get(name='cliente')
            user.groups.add(grupo)
            login(request, user)
            messages.success(request, "Te has registrado correctamente")
            return redirect(to="index")
        data["form"] = formulario

    return render(request, 'registration/Registrar.html', data)

@grupo_requerido('vendedor')
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

@grupo_requerido('vendedor')
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

@grupo_requerido('vendedor')
def delete(request,id):
    producto = Producto.objects.get(id=id) #OBTIENE UN PRODUCTO POR EL ID
    producto.delete()

    return redirect(to='index')

def generar_codigo_compra():
    length = 10
    letters_and_digits = string.ascii_uppercase + string.digits
    return ''.join(random.choice(letters_and_digits) for _ in range(length))




@grupo_requerido('cliente')
def agregar_al_carrito(request, producto_id):
    # Obtener el usuario actualmente autenticado
    usuario = request.user
    
    # Obtener el producto utilizando su ID
    producto = Producto.objects.get(id=producto_id)
    
    # Verificar si el producto ya está en el carrito del usuario
    carrito_existente = item_carrito.objects.filter(usuario=usuario, producto=producto).first()
    
    if carrito_existente:
        # Si el producto ya está en el carrito, se incrementa la cantidad
        carrito_existente.items += 1
        carrito_existente.save()
    else:
        # Si el producto no está en el carrito, se crea un nuevo registro
        nuevo_item = item_carrito(usuario=usuario, producto=producto, items=1)
        nuevo_item.save()
    # Actualizar el stock del producto
    producto.Stock -= 1
    producto.save()
    
    # Retornar un mensaje de éxito
    return redirect(request.META['HTTP_REFERER'])

@grupo_requerido('cliente')
def actualizar_carrito(request):
    if request.method == 'POST':
        item_id = request.POST.get('item_id')
        cantidad = int(request.POST.get('cantidad'))
        
        # Actualizar la cantidad del producto en el carrito
        try:
            item = item_carrito.objects.get(id=item_id)
            producto = item.producto
            stock_actual =int(producto.Stock)
            if cantidad > stock_actual:
                messages.error(request, 'No hay suficiente stock disponible.')
            else:
                # Calcular la diferencia de stock
                diferencia_stock = cantidad - item.items
                item.items = cantidad
                item.save()
                producto.Stock = stock_actual - diferencia_stock
                producto.save()


            messages.success(request, 'El carrito se ha actualizado correctamente.')
        except item_carrito.DoesNotExist:
            messages.error(request, 'El producto no existe en el carrito.')
        
        return redirect(request.META['HTTP_REFERER'])

    return redirect('core/Carrito.html') 

@grupo_requerido('cliente')
def Carrito(request):
    # Obtener los productos en el carrito del usuario actual
    items = item_carrito.objects.filter(usuario=request.user)

    # Calcular el precio total de cada producto
    for item in items:
        item.precio_total = item.items * item.producto.precio

    # Obtener la suscripción del usuario actual
    try:
        suscripcionUsuario = Suscripcion.objects.filter(usuario=request.user).first()
    except Suscripcion.DoesNotExist:
        suscripcionUsuario = None

    # Definir los descuentos de acuerdo al nivel de suscripción
    descuento_porcentaje = 0
    if suscripcionUsuario:
        if suscripcionUsuario.suscripcion.nombre == 'Plata':
            descuento_porcentaje = 0.03
        elif suscripcionUsuario.suscripcion.nombre == 'oro':
            descuento_porcentaje = 0.05
        elif suscripcionUsuario.suscripcion.nombre == 'Diamante':
            descuento_porcentaje = 0.1

    # Calcular el descuento total y el precio total con descuento
    precio_total = sum(item.precio_total for item in items)
    descuento_total = round(precio_total * descuento_porcentaje * -1)
    precio_total_descuento = precio_total + descuento_total
    descuento=round(descuento_porcentaje*100)

    # Pasar los productos, descuentos y precios al template como parte del contexto
    data = {
        'items': items,
        'descuento_porcentaje': descuento_porcentaje,
        'descuento':descuento,
        'precio_total': precio_total,
        'descuento_total': descuento_total,
        'precio_total_descuento': precio_total_descuento,
        'suscripcionUsuario':suscripcionUsuario.suscripcion if suscripcionUsuario else None
    }

    return render(request, 'core/Carrito.html', data)
@grupo_requerido('cliente')
def eliminarCarro(request, id):
    Carrito = item_carrito.objects.get(id=id)
    Carrito.delete()
    return redirect("Carrito")

def Contact(request):
    return render(request,'core/Contact.html')
@grupo_requerido('cliente')
def Pagar(request):
    usuario = request.user
    
    # Obtener los productos en el carrito del usuario
    items = item_carrito.objects.filter(usuario=usuario)
    precio_total = sum(item.producto.precio * item.items for item in items)


    data={
        'listaCarrito' : Carrito,
        'precio_total' : precio_total
    }
    #logica de sumar los precios del carrito
    respuesta = requests.get('https://mindicador.cl/api/dolar').json()
    valor_usd = respuesta['serie'][0]['valor']

    valor_Carrito = precio_total
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
@grupo_requerido('cliente')
def suscripcion(request):
    primer_nivel= TipoSuscripcion.objects.get(id=1)
    segundo_nivel = TipoSuscripcion.objects.get(id=2)
    tercer_nivel = TipoSuscripcion.objects.get(id=3)
    
    try:
        suscripcionUsuario = Suscripcion.objects.filter(usuario=request.user).first()
    except Suscripcion.DoesNotExist:
        suscripcionUsuario = None

    data = {
        'primer_nivel': primer_nivel,
        'segundo_nivel': segundo_nivel,
        'tercer_nivel' : tercer_nivel,
        'suscripcionUsuario'  : suscripcionUsuario,

    }
    return render(request, 'core/suscripcion.html', data)


def suscripcionAdmin(request):
    primer_nivel= TipoSuscripcion.objects.get(id=1)
    segundo_nivel = TipoSuscripcion.objects.get(id=2)
    tercer_nivel = TipoSuscripcion.objects.get(id=3)
    
    try:
        suscripcionUsuario = Suscripcion.objects.filter(usuario=request.user).first()
    except Suscripcion.DoesNotExist:
        suscripcionUsuario = None

    data = {
        'primer_nivel': primer_nivel,
        'segundo_nivel': segundo_nivel,
        'tercer_nivel' : tercer_nivel,
        'suscripcionUsuario'  : suscripcionUsuario.usuario.username if suscripcionUsuario else None

    }
    return render(request, 'core/suscripcionAdmin.html', data)

####### CRUD Suscripciones#############
@grupo_requerido('vendedor')
def addSuscripcion(request, id):
    usuario = request.user
    tipoSuscripcion = TipoSuscripcion.objects.get(id=id)
    suscripcionUsuario = Suscripcion.objects.create(usuario=usuario, suscripcion=tipoSuscripcion)
    return redirect('suscripcion')

@grupo_requerido('vendedor')
def deleteSuscripcion(request, id):
    suscripcionUsuario = Suscripcion.objects.filter(usuario=request.user).first()
    if suscripcionUsuario:
        suscripcionUsuario.delete()
    return redirect('suscripcion')

@grupo_requerido('vendedor')
def updateSuscripcion(request, id):
    suscripcionUsuario = Suscripcion.objects.filter(usuario=request.user).first()
    if suscripcionUsuario:
        tipoSuscripcion = TipoSuscripcion.objects.get(id=id)
        suscripcionUsuario.suscripcion = tipoSuscripcion
        suscripcionUsuario.save()
    return redirect('suscripcion')
####################FIN ############

def suscribirse(request):

    return render(request, 'core/suscribirse.html')

@grupo_requerido('cliente')
def Finalcompra(request):

    carrito_items = item_carrito.objects.all()

    # Guardar los elementos del carrito en la tabla HistorialCompra
    for item in carrito_items:
        historial_compra = HistorialCompra(
            usuario=item.usuario,
            producto=item.producto,
            items=item.items,
            precio_total=item.items * item.producto.precio
        )
        historial_compra.save()

    # Eliminar los elementos del carrito
    carrito_items.delete()


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

@grupo_requerido('cliente')
def historial(request):
    # Obtener el historial de compras del usuario actual
    historial_compras = HistorialCompra.objects.filter(usuario=request.user)
    
    # Pasar el historial de compras al contexto de la plantilla
    data = {
        'historial_compras': historial_compras
    }

    return render(request,'core/historial.html',data)

