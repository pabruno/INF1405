package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.QuickStopDAO;
import model.QuickStop;

@WebServlet("/paradas_atuais")
public class CurrentQuickStopsServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			ArrayList<QuickStop> stops = new QuickStopDAO().currentStops();
			
			request.setAttribute("stops", stops);
			request.getRequestDispatcher("paradas_atuais.jsp").forward(request, response);
		} catch (SQLException e) {
			request.getRequestDispatcher("errorBD.jsp").forward(request, response);
		}
	}
}
