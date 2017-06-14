package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.PlacesViewDAO;
import model.PlacesView;

@WebServlet("/vagas")
public class PlacesViewServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ArrayList<PlacesView> places = new PlacesViewDAO().getAllPlaces();
		
		request.setAttribute("places", places);
		request.getRequestDispatcher("vagas.jsp").forward(request, response);
	}
}
