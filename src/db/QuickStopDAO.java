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

	public ArrayList<QuickStop> currentStops() throws SQLException {
		con = new ConnectionBD().getConnection();

		ArrayList<QuickStop> stops = new ArrayList<>();
		QuickStop newStop;

		try {
			PreparedStatement query = con.prepareStatement("select * from estacionamento where pagamento_id is null");
			ResultSet result = query.executeQuery();

			while (result.next()) {
				newStop = new QuickStop();
				newStop.setId(result.getInt("id"));
				newStop.setStartDate(result.getDate("arrivaltime"));
				newStop.setPlaceId(result.getInt("vaga_id"));
				newStop.setAircraftId(result.getInt("aeronave_id"));
				newStop.setDepartureDate(result.getDate("departuretime"));

				stops.add(newStop);
			}

			result.close();
			query.close();
		} catch (SQLException e) {
			throw e;
		} finally {
			con.close();
		}

		return stops;
	}

	public void newQuickStop(QuickStop q) throws SQLException {
		con = new ConnectionBD().getConnection();

		try {
			PreparedStatement query = con
					.prepareStatement("insert into estacionamento(arrivaltime,vaga_id,aeronave_id) values (?,?,?)");

			Date arrival = new java.sql.Date(q.getStartDate().getTime());
			query.setDate(1, arrival);
			query.setInt(2, q.getPlaceId());
			query.setInt(3, q.getAircraftId());

			query.execute();
			query.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw e;
		} finally {
			con.close();
		}
	}

	public void finishQuickStop(int id) throws SQLException {
		con = new ConnectionBD().getConnection();

		try {
			PreparedStatement query = con.prepareStatement("update estacionamento set departuretime = ? where id = ?");

			Date departure = new java.sql.Date(System.currentTimeMillis());
			query.setDate(1, departure);
			query.setInt(2, id);

			query.execute();
			query.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw e;
		} finally {
			con.close();
		}
	}
	
	public double paymentQuickStop(int id) throws SQLException {
		con = new ConnectionBD().getConnection();

		try {
			PreparedStatement query = con.prepareStatement("select * from price_per_parking");
			ResultSet result = query.executeQuery();
			float priceHour = 0;
			double total;

			while(result.next()){
				if(result.getInt("id") == id){
					priceHour = result.getFloat("price_per_hour");
					break;
				}
			}

			total = calculatePayment(priceHour, id);
			confirmPayment(total,id);
			
			result.close();
			query.close();
			
			return total;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw e;
		} finally {
			con.close();
		}
	}
	
	private double calculatePayment(float priceHour, int id) throws SQLException {
		con = new ConnectionBD().getConnection();

		try {
			PreparedStatement query = con.prepareStatement("select * from estacionamento");
			ResultSet result = query.executeQuery();
			double total;
			long arrival = 0, departure = 0;

			while(result.next()){
				if(result.getInt("id") == id){
					arrival = result.getDate("arrivaltime").getTime();
					departure = result.getDate("departuretime").getTime();
					break;
				}
			}
			
			total = ((departure-arrival)*(0.001/3600))*priceHour;

			result.close();
			query.close();
			
			return total;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw e;
		} finally {
			con.close();
		}
	}
	
	private void confirmPayment(double total, int id) throws SQLException {
		con = new ConnectionBD().getConnection();

		try {
			PreparedStatement query = con.prepareStatement("insert into pagamento_estacionamento(payment_date,estacionamento_id) values(?,?)");
			
			Date payment_date = new java.sql.Date(System.currentTimeMillis());
			query.setDate(1, payment_date);
			query.setInt(2, id);
			
			query.execute();
			query.close();
			
			query = con.prepareStatement("select * from pagamento_estacionamento");
			ResultSet result = query.executeQuery();
			int paymentID = 0;
			
			while(result.next()){
				if(result.getInt("estacionamento_id") == id){
					paymentID = result.getInt("id");
				}
			}
			
			query.execute();
			query.close();
			
			
			query = con.prepareStatement("update estacionamento set price=?, pagamento_id=? where id=?");
			
			query.setFloat(1, (float)total);
			query.setInt(2, paymentID);
			query.setInt(3, id);
			
			query.execute();
			query.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw e;
		} finally {
			con.close();
		}
	}
}
