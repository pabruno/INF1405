package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Supply;

// Classe responsável por fazer acesso para leitura e escrita na tabela Cliente do Banco de Dados.

public class SupplyDAO {
	private Connection con;
	
	// Método que retorna todas as linhas da tabela Cliente
	
	public ArrayList<Supply> getAllSupplies() throws SQLException{
		con = new ConnectionBD().getConnection();
		
		ArrayList<Supply> supplies = new ArrayList<Supply>();
		Supply newSupply;
		
		try {
			PreparedStatement query = con.prepareStatement("select * from abastecimento");
			ResultSet result = query.executeQuery();
			
			while(result.next()){
				newSupply = new Supply();
				newSupply.setId(result.getInt("id"));
				newSupply.setFueldate(result.getDate("fuel_date"));
				newSupply.setPrice(result.getFloat("price"));
				newSupply.setAircraftId(result.getInt("aeronave_id"));
				newSupply.setFuelId(result.getInt("combustivel_id"));
				newSupply.setPaymentId(result.getInt("pagamento_id"));
				newSupply.setLiter(result.getInt("liter"));
				
				supplies.add(newSupply);
			}
			
			result.close();
			query.close();
		} catch (SQLException e) {
			System.out.println("Erro na query getAllClients do ClientDAO");
			throw e;
		}
		finally {
			con.close();
		}
		
		return supplies;
	}
}
