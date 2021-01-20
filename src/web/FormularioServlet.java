package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormularioServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String email = request.getParameter("email");
		int edad = Integer.parseInt(request.getParameter("edad"));
		
		String nombreCompleto;
		String rango="";
		String mayorEdad="";
		 
		 if(edad>= 18) {
			 nombreCompleto = ""+nombre+ " "+ apellido;
			 rango = "Es mayor de edad";
			 mayorEdad = ""+ email;
		 }else {
			 nombreCompleto = "" +nombre + " "+ apellido;
			 rango = "Es menor de edad";
			 mayorEdad = "Es menor de edad, no se puede ver Correo Electrónico";
		 }
	
		 request.getSession().setAttribute("nombreCompleto", nombreCompleto);
		 request.getSession().setAttribute("rango", rango);
		 request.getSession().setAttribute("mayorEdad", mayorEdad);
		
		response.sendRedirect("index.jsp");
		
	}
	
}
