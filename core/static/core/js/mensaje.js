
function mensaje(){
    alert('Bienvenido a la Pagina');

}
function NoIniciado(){
  Swal.fire({
    icon: 'error',
    title: 'Error',
    text: 'Debes iniciar sesion primero',
  })

}
function deleteProducto(id){
    //alert(id)
    //console.log("ID: "+id);
    Swal.fire({
        title: 'Eliminar',
        text: 'Desea eliminar los datos?',
        icon: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonText:'Cancelar',
        cancelButtonColor: '#d33',
        confirmButtonText: 'success'
      }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire('Eliminado!','Producto Eliminado Correctamente','success').then(function() {
                window.location.href = "/delete/"+id+"/";
            })
          }
        })
    }
function eliminarCarro(id){
    //alert(id)
    //console.log("ID: "+id);
    Swal.fire({
        title: 'Eliminar',
        text: 'Desea eliminar los datos?',
        icon: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText:'Cancelar',
        confirmButtonText: 'Confirmar'
      }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire('Eliminado!','Producto Eliminado Correctamente del Carrito','success').then(function() {
                window.location.href = "/eliminarCarro/"+id+"/";
            })
          }
        })
}

function Comprafinalizada(){
  Swal.fire({
      title: 'Compra Realizada',
      text: 'Su compra ha sido realizada exitosamente',
      icon: 'success',
      confirmButtonColor: '#3085d6',
      confirmButtonText: 'Confirmar'
    }).then(function() {
      window.location.href = "/Finalcompra/";
  })
}

function NoCarrito(){Swal.fire({
  icon: 'error',
  title: 'Error',
  text: 'No hay nada en el carrito',
})
}


function Suscrip_pagar(){
  Swal.fire({
    title:'Confirmar Suscripcion',
    icon: 'info',
    text:'¿Estas seguro?',
    confirmButtonColor:'#3085d6',
    confirmButtonText: 'Confirmar',
    showCancelButton: true,
    cancelButtonColor: '#d33',
    cancelButtonText:'Cancelar',
    }).then((result) => {
      if (result.isConfirmed) {
          Swal.fire('Pago Realizado!','Gracias por la suscripcion','success').then(function() {
              window.location.href = "/FinalSuscripcion/";
          })
        }
      })
}
