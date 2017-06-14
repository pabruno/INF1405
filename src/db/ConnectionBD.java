package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// Classe responsável por fazer a conexão com o Banco de Dados.

public class ConnectionBD {
	public Connection getConnection(){
		Connection con = null;
		try {
			Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/hangar","postgres","1234");
			System.out.println("Conectado com o banco com sucesso");
		}
		catch (SQLException e){
			System.out.println("Erro na conexão com o banco");
		}
		catch (ClassNotFoundException e){
			System.out.println("Erro na conexão com o banco");
		}
		return con;
	}
}
