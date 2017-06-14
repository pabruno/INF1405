package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.ClientDAO;
import model.Client;

@WebServlet("/clientes")
public class ClientsServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ArrayList<Client> clients = new ClientDAO().getAllClients();
		
		request.setAttribute("clients", clients);
		request.getRequestDispatcher("/clientes.jsp").forward(request,response);
	}
}
