<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!-- iMPORTAMOS LAS LIBRERIAS QUE VAMOS A USAR -->
 <%@ page import="java.util.List" %>
<%@ page import="models.Producto" %>
<%@ page import="shared.Constants" %>
 
 <!-- forma en como se importa las librerias -->
    
<!DOCTYPE html>
<html>
<!-- CABEZA -->
<head>
    <meta charset="UTF-8">
    <title>Gestion de Inventario | SISE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
</head>
<!-- CUERPO -->
<body class="bg-slate-600 rounded-lg  ring shadow-xl ring-gray-400">

   <%
   List<Producto> productos=(List<Producto>) request.getAttribute("productos");
   %>
   <!-- REplicamos todo lo que se encuentra en INDEX -->
   <!-- definimos las cabeceras  -->
   <!-- border border-white border-solid (marcar border que usamos en alguna imagen) -->
  <header>      
      <div class="flex bg-rose-900 h-[50px] items-center justify-between">
         
         <div class="flex gap-4 justify-center w-full">
            <a href="/Proyecto_Gestion_Inventario" class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer "> Inicio </a>
            <a href="/Proyecto_Gestion_Inventario/categorias" class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer border border-white border-solid"> Categorias </a>
            <a class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer"> Marcas</a>
            <a class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer"> Proveedores</a>
            <a class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer"> Reportes</a>
            
       </div>                 
         <a class="mr-2 bg-white p-1 rounded text-green-700 font-medium hover:bg-green-700
                   hover:text-white hover:border hover:border-white" href="/galactus-store/carrito">Carrito</a>
      </div>
   </header>
   
   <!--  Replicamos el main de index -->
   <main class="p-4">
    <div class="flex w-full justify-center p-4 gap-4 flex-wrap cursor-pointer " > 
          <%         
             if(productos!=null && !productos.isEmpty()){
            	 for (Producto producto: productos){        
          %>    
          <!-- referenciamos -->    
            <a class="flex bg-gray-200 w-[200px] justify-center flex-col p-4 gap-1 items-center rounded-md cursor-pointer border border-white border-solid">
            
              <img class="rounded-sm" src="<%= producto.getImagenUrl() !=null ? producto.getImagenUrl():Constants.IMAGEN_PRODUCTO_DEFAULT%>" width="150px">
              <span class="w-full justify-between items-end flex">
                      <span class="text-xs text-left text-center text-green-600 font-medium"><%= producto.getCodigoInterno() %></span>
                      <span class="text-center font-bold text-blue-600 text-right text-xl"><%= producto.getPrecio() %></span>
              </span>
                <span class="text-center font-bold text-gray-600 text-xs"><%= producto.getNombre() %></span>
                <span class="w-full text-red-500 text-left text-xs"><%= producto.getStock() %> unidades</span>
                              
                <button class="bg-orange-600 w-full text-white font-medium hover:bg-orange-700 p-1 rounded cursor-pointer"
                 onclick="agregarCarrito(<%= producto.getIdProducto() %>)">+ Agregar Carrito</button>
            </a>
          <% } %>
          <% }else{ %>
         <p>No se encontraron registros</p> 
         <% } %>
        
        </div>
   </main>
   
   <!-- PIE DE PAGINA -->
 <footer class="bg-teal-700 text-white py-10 fixed bottom-0 left-0 w-full">
  <div class="max-w-7xl mx-auto px-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-5 gap-8 text-center">
   
    <div>
     <img src="icons/Control.png" class="w-10 mx-auto mb-2">
      <h5 class="text-2xl font-bold text-teal-400">Servicio de Calidad</h5>
      <h6 class="text-sm text-gray-300">Cumplimiento de normas y conjuntos de estándares</h6>
    </div>

    <div>
      <img src="icons/vigilancia.png" class="w-10 mx-auto mb-2">
      <h5 class="text-2xl font-bold text-teal-400">Profesionalismo</h5>
      <h6 class="text-sm text-gray-300">Mejores Gestores del Region</h6>
    </div>

    <div>
      <img src="icons/seguridad.png" class="w-10 mx-auto mb-2">
      <h5 class="text-2xl font-bold text-teal-400">Seguridad</h5>
      <h6 class="text-sm text-gray-300">Confianza en salida y entrada de mercancia</h6>
    </div>

    <div>
      <img src="icons/stock.png"  class="w-10 mx-auto mb-2">
      <h5 class="text-2xl font-bold text-teal-400">Stock</h5>
      <h6 class="text-sm text-gray-300">Siempre con productos</h6>
    </div>

    <div>
      <img src="icons/transporte.png"  class="w-10 mx-auto mb-2">
      <h5 class="text-2xl font-bold text-teal-400">Transporte</h5>
      <h6 class="text-sm text-gray-300">Las 24 horas del dia</h6>
    </div>

  </div>
</footer>
</body>

<script >
     async function agregarCarrito(idProducto)
     {
    	 console.log('agregarCarrito',idProducto);   	 
    	 fetch('/Proyecto_Gestion_Inventario/carrito?idProducto='+idProducto,{method: 'POST'});
     }
</script>

</html>