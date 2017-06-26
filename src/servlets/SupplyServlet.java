package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.SupplyDAO;
import model.Supply;

@WebServlet("/abastecimentos")
public class SupplyServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			ArrayList<Supply> supplies = new SupplyDAO().getAllSupplies();
			request.setAttribute("supplies", supplies);
			request.getRequestDispatcher("abastecimento.jsp").forward(request, response);
		} catch (SQLException e) {
			request.getRequestDispatcher("errorBD.jsp").forward(request, response);
		}
	}
}