package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.AircraftViewDAO;
import db.PlacesViewDAO;
import model.AircraftView;
import model.PlacesView;

@WebServlet("/nova_parada")
public class NewQuickStopServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ArrayList<AircraftView> aircrafts = new ArrayList<>();
		ArrayList<PlacesView> places = new ArrayList<>();
		try {
			aircrafts = new AircraftViewDAO().getAllAircrafts();
			places = new PlacesViewDAO().getAllPlaces();
		} catch (SQLException e) {
			request.getRequestDispatcher("errorBD.jsp").forward(request, response);
		}
		
		request.setAttribute("aircrafts", aircrafts);
		request.setAttribute("places", places);
		request.getRequestDispatcher("/nova_parada.jsp").forward(request, response);
	}
}
