package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Roles;
import services.RolesService;
import services.impl.RolesServiceImpl;

@WebServlet("/roles")
public class RolesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
          
	private final RolesService rolesService; 
	
    public RolesServlet() {
        super();
        rolesService=new RolesServiceImpl();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Roles> roles=rolesService.listarRoles();
		request.setAttribute("roles",roles);
		RequestDispatcher dispatcher=request.getRequestDispatcher("/views/roles.jsp");
		dispatcher.forward(request, response);
	}


}
