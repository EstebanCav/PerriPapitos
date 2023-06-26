from django.urls import path, include
from.views import *
from rest_framework import routers

#Creamos las rutas del api
router = routers.DefaultRouter()
router.register('productos',ProductoViewset)
router.register('tipoproductos',TipoProductoViewset)
router.register('tiposuscripcion',SuscripcionViewset)
router.register('suscripcion',SuscripcionViewset)


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
    path('suscripcion/',suscripcion,name='suscripcion'),
    path('suscribirse/',suscribirse,name='suscribirse'),
    path('Finalcompra/',Finalcompra,name='Finalcompra'),
    path('FinalSuscripcion/',FinalSuscripcion,name='FinalSuscripcion'),
    path('suscripcionAdmin/',suscripcionAdmin,name='suscripcionAdmin'),
    path('agregar_al_carrito/<int:producto_id>/', agregar_al_carrito, name='agregar_al_carrito'),
    path('historial/', historial,name='historial'),
    #crud
    path('Registrar/',Registrar, name="Registrar"),
    path('add/',add, name="add"),
    path('update/<id>/',update, name="update"),
    path('delete/<id>/',delete, name="delete"),
    path('eliminarCarro/<id>/',eliminarCarro, name="eliminarCarro"),
    path('actualizar_carrito/', actualizar_carrito, name='actualizar_carrito'),
    path('Pagar_suscripcion/', Pagar_suscripcion, name='Pagar_suscripcion'),
    path('addSuscripcion/<id>/', addSuscripcion, name='addSuscripcion'),
    path('deleteSuscripcion/<id>/', deleteSuscripcion, name='deleteSuscripcion'),
    path('updateSuscripcion/<id>/',updateSuscripcion,name='updateSuscripcion'),



    

]
