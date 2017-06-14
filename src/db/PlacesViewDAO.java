package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.PlacesView;

public class PlacesViewDAO {
	private Connection con;
	
	// Método que retorna a lista de todas as vagas com seus tamanhos
	
	public ArrayList<PlacesView> getAllPlaces(){
		con = new ConnectionBD().getConnection();
		
		ArrayList<PlacesView> places = new ArrayList<PlacesView>();
		PlacesView newPlace;
		
		try {
			PreparedStatement query;
			query = con.prepareStatement("select * from vagas_view");
			ResultSet result = query.executeQuery();
			while(result.next()){
				newPlace = new PlacesView();
				newPlace.setId(result.getInt("id"));
				newPlace.setSize(result.getString("size"));
				newPlace.setAvailability(result.getBoolean("availability"));
				
				places.add(newPlace);
			}
			
			result.close();
			query.close();
			con.close();
		} catch (SQLException e) {
			System.out.println("Erro na getAllPlaces em PlacesViewDAO");
		}
		
		return places;
	}
}
