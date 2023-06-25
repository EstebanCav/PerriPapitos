from django.urls import path, include
from.views import *
from rest_framework import routers

#Creamos las rutas del api
router = routers.DefaultRouter()
router.register('productos',ProductoViewset)
router.register('tipoproductos',TipoProductoViewset)


urlpatterns = [
    #API
    path('api/', include(router.urls)),
    #RUTAS
    path('Carrito/',Carrito, name="Carrito"),
    path('Contact/',Contact, name="Contact"),
    path('',index, name="index"),
    path('indexapi',indexapi, name="indexapi"),
    path('team/',team, name="team"),
    path('Pagar/',Pagar, name="Pagar"),
    #crud
    path('Registrar/',Registrar, name="Registrar"),
    path('add/',add, name="add"),
    path('update/<id>/',update, name="update"),
    path('delete/<id>/',delete, name="delete"),
    path('eliminarCarro/<id>/',eliminarCarro, name="eliminarCarro"),
    path('Pagar_suscripcion/', Pagar_suscripcion, name='Pagar_suscripcion'),
    path('suscribirse/',suscribirse,name='suscribirse'),
    path('Finalcompra/',Finalcompra,name='Finalcompra'),
    path('FinalSuscripcion/',FinalSuscripcion,name='FinalSuscripcion'),
    path('suscripcion/',suscripcion,name='suscripcion'),
    path('suscripcionAdmin/',suscripcionAdmin,name='suscripcionAdmin'),
    path('addSuscripcion/<id>/', addSuscripcion, name='addSuscripcion'),
    path('deleteSuscripcion/<id>/', deleteSuscripcion, name='deleteSuscripcion'),
    path('updateSuscripcion/<id>/',updateSuscripcion,name='updateSuscripcion'),



    

]
