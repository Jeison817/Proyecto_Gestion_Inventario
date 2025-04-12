<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.List"%>
<%@ page import="models.Roles"%>              
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Gestion de Inventario | SISE</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
    
</head>
<body class="bg-slate-600 rounded-lg  ring shadow-xl ring-gray-400" >
      
      <%
		List<Roles> roles= (List<Roles>) request.getAttribute("roles");
	  %>
      
     <header>      
      <div class="flex bg-rose-900 h-[50px] items-center justify-between">
         
         <div class="flex gap-4 justify-center w-full">
            <a href="/Proyecto_Gestion_Inventario" class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer border border-white border-solid"> Inicio </a>
            <a href="/Proyecto_Gestion_Inventario/categorias" class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer "> Categorias </a>
            <a class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer"> Marcas</a>
            <a class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer"> Proveedores</a>
            <a class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer"> Reportes</a>
            
       </div>                   
      </div>
   </header>
   
     
 <div class="grid grid-cols-4 gap-4 p-8">
 
    <!-- COLUMNA GERENTE -->
    <div>
    <h2 class="text-center font-bold text-teal-400  mb-2">Gerente</h2>
    <% for (Roles rol : roles) {
        if (rol.getNombreRol().equalsIgnoreCase("Gerente")) { %>
            <div onclick="flipCard(this)" class="bg-pink-300 p-4 rounded shadow cursor-pointer mb-4">
                <div class="front">
                    <img src="<%= rol.getImagenUrl() %>" class="mx-auto w-24 h-24 rounded mb-2" />
                    
                    <button class="bg-orange-600 w-full text-white font-medium hover:bg-orange-700 p-1 rounded cursor-pointer"
             onclick="agregarCarrito(<%= rol.getNombreRol() %>)"> - Mostrar Personal - </button>
                                      
                </div>
                <div class="back hidden">
                    <p class="text-base text-center text-stale-700 font-medium"><%= rol.getDescripcion() %></p>
                </div>
            </div>
    <%  } } %>
</div>

    <!-- COLUMNA ADMINISTRADOR -->
    <div>
        <h2 class="text-center font-bold text-teal-400  mb-2">Administrador</h2>
        <% for (Roles rol : roles) {
            if (rol.getNombreRol().equalsIgnoreCase("Administrador")) { %>
                <div onclick="flipCard(this)" class="bg-pink-300 p-4 rounded shadow cursor-pointer mb-4">
                    <div class="front">
                        <img src="<%= rol.getImagenUrl() %>" class="mx-auto w-24 h-24 rounded mb-2" />
                        
                        <button class="bg-orange-600 w-full text-white font-medium hover:bg-orange-700 p-1 rounded cursor-pointer"
             onclick="agregarCarrito(<%= rol.getNombreRol() %>)"> - Mostrar Personal - </button>
                        
                    </div>
                    <div class="back hidden">
                        <p class="text-base text-center text-stale-700 font-medium"><%= rol.getDescripcion() %></p>
                    </div>
                </div>
        <%  } } %>
    </div>

    <!-- COLUMNA COMPRADOR -->
    <div>
        <h2 class="text-center font-bold text-teal-400  mb-2">Comprador</h2>
        <% for (Roles rol : roles) {
            if (rol.getNombreRol().equalsIgnoreCase("Comprador")) { %>
                <div onclick="flipCard(this)" class="bg-pink-300 p-4 rounded shadow cursor-pointer mb-4">
                    <div class="front">
                        <img src="<%= rol.getImagenUrl() %>" class="mx-auto w-24 h-24 rounded mb-2" />
                        
                        <button class="bg-orange-600 w-full text-white font-medium hover:bg-orange-700 p-1 rounded cursor-pointer"
             onclick="agregarCarrito(<%= rol.getNombreRol() %>)"> - Mostrar Personal - </button>
                    
                    </div>
                    <div class="back hidden">
                        <p class="text-base text-center text-stale-700 font-medium"><%= rol.getDescripcion() %></p>
                    </div>
                </div>
        <%  } } %>
    </div>

    <!-- COLUMNA VENDEDOR -->
    <div>
        <h2 class="text-center font-bold text-teal-400 mb-2">Vendedor</h2>
        <% for (Roles rol : roles) {
            if (rol.getNombreRol().equalsIgnoreCase("Vendedor")) { %>
                <div onclick="flipCard(this)" class="bg-pink-300 p-4 rounded shadow cursor-pointer mb-4">
                    <div class="front">
                        <img src="<%= rol.getImagenUrl() %>" class="mx-auto w-24 h-24 rounded mb-2" />
                        
                        <button class="bg-orange-600 w-full text-white font-medium hover:bg-orange-700 p-1 rounded cursor-pointer"
             onclick="agregarCarrito(<%= rol.getNombreRol() %>)"> - Mostrar Personal - </button>
                        
                    </div>
                    <div class="back hidden">
                        <p class="text-base text-center text-stale-700 font-medium"><%= rol.getDescripcion() %></p>

                    </div>
                </div>
        <%  } } %>
    </div>
</div>
 
 
     
<footer class="bg-lime-950 text-white py-10 fixed bottom-0 left-0 w-full">
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
     <script>
    function flipCard(card) {
        const front = card.querySelector('.front');
        const back = card.querySelector('.back');
        front.classList.toggle('hidden');
        back.classList.toggle('hidden');
    }
</script>
     
</body>
</html>


