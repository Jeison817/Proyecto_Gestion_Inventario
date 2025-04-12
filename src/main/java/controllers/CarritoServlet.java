package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Salida;
import models.SalidaDetalle;
import services.impl.SalidaDetalleServiceImpl;
import services.impl.SalidaServiceImpl;
import shared.Util;


@WebServlet("/carrito")
public class CarritoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private SalidaServiceImpl salidaServiceImpl; 
    private SalidaDetalleServiceImpl salidaDetalleServiceImpl; 
	
    public CarritoServlet() {
        super();
        salidaServiceImpl=new SalidaServiceImpl();
        salidaDetalleServiceImpl=new SalidaDetalleServiceImpl();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		//************************************
		
		 
		
		//***********************************
		
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("/views/carrito.jsp");
		dispatcher.forward(request, response);
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("idProducto:"+request.getParameter("idProdcuto"));
		Integer idProducto=Integer.parseInt(request.getParameter("idProducto"));
		System.out.println("Se esta agregando un elemento al carrito: "+idProducto);
		
		
		// llamamos la clase generada en Shared
		String sessionId=Util.getCookieValue(request.getCookies(),"JSESSIONID");
		
		// Generamos un cookie para guardar los identificadores de elementos que vamos agregar
        //Cookie[] cookies=request.getCookies();
        //for(Cookie cookie:cookies) 
        //{
        //	System.out.println("cookie:"+cookie.getName()+"-"+cookie.getValue());
        	
        //}
		
		
		//**********************************************************************************
		Salida salida= salidaServiceImpl.obtenerSalidaPorCodigoInterno(sessionId);
		if(salida==null) {
			Salida newSalida = new Salida();
			newSalida.setCodigoInterno(sessionId);
			salida= salidaServiceImpl.insertarSalida(newSalida);
		}
		
		System.out.println("Salidaid::"+salida.getIdSalida());
		
		
		
		//****************************************************************************

		SalidaDetalle salidaDetalle = salidaDetalleServiceImpl.obtenerSalidaDetallePorIdSalidaYIdProducto(idProducto, idProducto);
		if(salidaDetalle  == null) {
			SalidaDetalle newSalidaDetalle = new SalidaDetalle();
			newSalidaDetalle.setIdSalida(salida.getIdSalida());
			newSalidaDetalle.setIdProducto(idProducto);
			salidaDetalle = salidaDetalleServiceImpl.insertarSalidaDetalle(newSalidaDetalle);
		} else {
			salidaDetalleServiceImpl.aumentarSalidaDetalleCantidad(salidaDetalle.getIdSalidaDetalle());
		}
		
		System.out.println("VentaDetalleId::"+salidaDetalle.getIdSalidaDetalle());
		
		
	}

}
