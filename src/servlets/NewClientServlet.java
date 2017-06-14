package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.ClientDAO;
import model.Client;

@WebServlet("/novo_cliente")
public class NewClientServlet extends HttpServlet {
	protected void service (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Client client = new Client();
		client.setName(request.getParameter("name"));
		client.setEmail(request.getParameter("email"));
		client.setPhone(request.getParameter("phone"));
		client.setLicense(request.getParameter("license"));
		
		try {
			new ClientDAO().createClient(client);
		} catch (SQLException e) {
			request.getRequestDispatcher("errorBD.jsp").forward(request, response);
		}
		
		request.getRequestDispatcher("cadastroSucesso.jsp").forward(request, response);
	}
}
