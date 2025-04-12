package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import models.Marcas;
import services.MarcasService;
import services.impl.MarcasServiceImpl;


@WebServlet("/marcas")
public class MarcasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final MarcasService marcasService; 
	
    public MarcasServlet() {
        super();
        marcasService=new MarcasServiceImpl();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Marcas> marcas=marcasService.listarMarcas();
		request.setAttribute("marcas",marcas);
		RequestDispatcher dispatcher=request.getRequestDispatcher("/views/marcas.jsp");
		dispatcher.forward(request, response);
	}


	

}
