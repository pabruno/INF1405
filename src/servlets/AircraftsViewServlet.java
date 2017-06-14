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
import model.AircraftView;

@WebServlet("/aeronaves")
public class AircraftsViewServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ArrayList<AircraftView> aircrafts = new ArrayList<>();
		try {
			aircrafts = new AircraftViewDAO().getAllAircrafts();
		} catch (SQLException e) {
			request.getRequestDispatcher("errorBD.jsp").forward(request, response);
		}
		
		request.setAttribute("aircrafts", aircrafts);
		request.getRequestDispatcher("/aeronaves.jsp").forward(request, response);
	}
}
