<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.List"%>
<%@ page import="models.Marcas"%>              
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Gestion de Inventario | SISE</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
    
</head>
<body class="bg-slate-600 rounded-lg  ring shadow-xl ring-gray-400" >
      
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
   
     
    <main class="p-4 mb-40">
   <h1 class="text-3xl font-bold mb-4 text-center"> Marcas Mas Reconocidos </h1>
        <div class="flex w-full justify-center p-4 gap-4 flex-wrap">  
          <%
          List<Marcas> marcas=(List<Marcas>) request.getAttribute("marcas");
             if(marcas!=null && !marcas.isEmpty()){
            	 for (Marcas marca: marcas){        
          %>
          
                  
             <div onclick="flipCard(this)" class="relative w-[180px] h-[190px] [perspective:1000px]">
    <div class="relative w-full h-full transition-transform duration-500 [transform-style:preserve-3d]">
      
      <!-- Frente -->
      <div class="front absolute w-full h-full bg-gray-200 border border-gray-300 rounded-md flex flex-col items-center justify-center [backface-visibility:hidden]">
        <img class="rounded-sm" src="<%= marca.getImagenUrl()%>" width="150px">                                    
        <p class="text-center mt-2 font-semibold">Marca: <%= marca.getNombre()%></p>
      </div>

      <!-- Reverso -->
      <div class="back absolute w-full h-full bg-gray-100 border border-gray-300 rounded-md flex flex-col items-center justify-center [transform:rotateY(180deg)] [backface-visibility:hidden]">
        <p class="text-center font-semibold">Descripción:</p>
        <p class="text-center px-2"><%= marca.getDescripcion() %></p>
      </div>

    </div>
  </div>
          <% } %>
          <% }else{ %>
         <p>No se encontraron registros</p> 
         <% } %>
        
        </div>
            
   </main> 
   
    
 
     
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
    const inner = card.querySelector('div');
    if (inner.style.transform === 'rotateY(180deg)') {
      inner.style.transform = 'rotateY(0deg)';
    } else {
      inner.style.transform = 'rotateY(180deg)';
    }
  }
</script>
</body>
</html>


