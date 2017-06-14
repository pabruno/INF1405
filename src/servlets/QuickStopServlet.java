package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.QuickStopDAO;
import model.QuickStop;

@WebServlet("/parada")
public class QuickStopServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		QuickStop q = new QuickStop();
		String[] aircraftId;
		
		String aircraftClient = request.getParameter("aircraftClient");
		aircraftId = aircraftClient.split("/");
		q.setAircraftId(Integer.parseInt(aircraftId[0]));
		
		String placeId = request.getParameter("place");
		q.setPlaceId(Integer.parseInt(placeId));
		
		q.setStartDate(new Date(System.currentTimeMillis()));
		
		try {
			new QuickStopDAO().newQuickStop(q);
		} catch (SQLException e) {
			request.getRequestDispatcher("errorBD.jsp").forward(request, response);
		}
		
		request.getRequestDispatcher("cadastroSucesso.jsp").forward(request, response);
	}
}
