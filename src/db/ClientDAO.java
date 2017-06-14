package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Client;

// Classe responsável por fazer acesso para leitura e escrita na tabela Cliente do Banco de Dados.

public class ClientDAO {
	private Connection con;
	
	// Método que retorna todas as linhas da tabela Cliente
	
	public ArrayList<Client> getAllClients(){
		con = new ConnectionBD().getConnection();
		
		ArrayList<Client> clients = new ArrayList<Client>();
		Client newClient;
		
		try {
			PreparedStatement query = con.prepareStatement("select * from cliente");
			ResultSet result = query.executeQuery();
			
			while(result.next()){
				newClient = new Client();
				newClient.setId(result.getInt("id"));
				newClient.setEmail(result.getString("email"));
				newClient.setPhone(result.getString("phone"));
				newClient.setLicense(result.getString("license"));
				newClient.setName(result.getString("name"));
				
				clients.add(newClient);
			}
			
			result.close();
			query.close();
			con.close();
		} catch (SQLException e) {
			System.out.println("Erro na query getAllClients do ClientDAO");
		}
		
		return clients;
	}
	
	// Método que adiciona um cliente ao banco de dados
	
	public void createClient(Client c) throws SQLException{
		con = new ConnectionBD().getConnection();
		
		try {
			PreparedStatement query = con.prepareStatement("insert into cliente(name,email,phone,license) values (?,?,?,?)");
			
			query.setString(1, c.getName());
			query.setString(2, c.getEmail());
			query.setString(3, c.getPhone());
			query.setString(4, c.getLicense());
			
			query.execute();
			query.close();
		}
		catch(SQLException e){
			throw e;
		}
		finally{
			con.close();
		}
	}
}
