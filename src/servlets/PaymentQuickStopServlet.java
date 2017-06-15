package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.QuickStopDAO;

@WebServlet("/pagamento_parada")
public class PaymentQuickStopServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		double value = 0;
		try {
			value = new QuickStopDAO().paymentQuickStop(Integer.parseInt(request.getParameter("id")));
		} catch (SQLException e) {
			request.getRequestDispatcher("errorBD.jsp").forward(request, response);
		}
		
		request.setAttribute("value", value);
		request.getRequestDispatcher("pagamento.jsp").forward(request, response);
	}
}
