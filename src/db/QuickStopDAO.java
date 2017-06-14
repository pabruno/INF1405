package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;

import model.QuickStop;

public class QuickStopDAO {
	private Connection con;
	
	public ArrayList<QuickStop> currentStops() throws SQLException{
		con = new ConnectionBD().getConnection();
		
		ArrayList<QuickStop> stops = new ArrayList<>();
		QuickStop newStop;
		
		try {			
			PreparedStatement query = con.prepareStatement("select * from estacionamento where departuretime is null");
			ResultSet result = query.executeQuery();
			
			while(result.next()){
				newStop = new QuickStop();
				newStop.setId(result.getInt("id"));
				newStop.setStartDate(result.getDate("arrivaltime"));
				newStop.setPlaceId(result.getInt("vaga_id"));
				newStop.setAircraftId(result.getInt("aeronave_id"));
				
				stops.add(newStop);
			}
			
			result.close();
			query.close();
		} catch (SQLException e) {
			throw e;
		}
		finally{
			con.close();
		}
		
		return stops;
	}
	
	public void newQuickStop(QuickStop q) throws SQLException{
		con = new ConnectionBD().getConnection();
		
		try {
			PreparedStatement query = con.prepareStatement("insert into estacionamento(arrivaltime,vaga_id,aeronave_id) values (?,?,?)");
			
			Date arrival = new java.sql.Date(q.getStartDate().getTime());
			query.setDate(1, arrival);
			query.setInt(2, q.getPlaceId());
			query.setInt(3, q.getAircraftId());
			
			query.execute();
			query.close();
		}
		catch(SQLException e){
			System.out.println(e.getMessage());
			throw e;
		}
		finally{
			con.close();
		}
	}
}
