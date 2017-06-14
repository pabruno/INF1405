package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.AircraftView;

public class AircraftViewDAO {
	private Connection con;
	
	public ArrayList<AircraftView> getAllAircrafts() throws SQLException{
		ArrayList<AircraftView> aircrafts = new ArrayList<>();
		AircraftView newAircraft;
		
		con = new ConnectionBD().getConnection();
		
		try {
			PreparedStatement query = con.prepareStatement("select * from aeronaves_view");
			ResultSet result = query.executeQuery();
			
			while(result.next()){
				newAircraft = new AircraftView();
				newAircraft.setId(result.getInt("id"));
				newAircraft.setCode(result.getString("code"));
				newAircraft.setModel(result.getString("model"));
				newAircraft.setManufacturer(result.getString("manufacturer"));
				newAircraft.setClientName(result.getString("name"));
				newAircraft.setSize(result.getString("size"));
				
				aircrafts.add(newAircraft);
			}
			
			result.close();
			query.close();
		} catch (SQLException e) {
			throw e;
		}
		finally{
			con.close();
		}
		
		return aircrafts;
	}
}
