package servlets;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.QuickStopDAO;

@WebServlet("/finalizar_parada")
public class FinishQuickStopServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int id = Integer.parseInt(request.getParameter("id"));
		
		try {
			new QuickStopDAO().finishQuickStop(id);
		}
		catch(SQLException e) {
			request.getRequestDispatcher("errorBD.jsp").forward(request, response);
		}
		
		request.getRequestDispatcher("pagamento_parada").forward(request, response);
	}
}
