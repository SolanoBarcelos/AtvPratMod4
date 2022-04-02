package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.MySQLConnection;
import model.Destino;

public class DestinoDao implements CRUD {
	
	private static Connection connection = MySQLConnection.createConnection();
	private static String sql;

	public static void create(Destino destino) {
		sql = "INSERT INTO destino VALUES(null, ?, ?, ?)";
		
		try {
			
			PreparedStatement preparedStatament = connection.prepareStatement(sql);
			
			preparedStatament.setString(1, destino.getNome());
			preparedStatament.setString(2, destino.getCidade());
			preparedStatament.setString(3, destino.getEstado());
			
			preparedStatament.executeUpdate();
			
			System.out.println("--correct insert on database.");

			
		} catch(SQLException e){
			
			System.out.println("--incorrect insert on database. " + e.getMessage());
			
		}
	}
	
	public static void delete(int destinoId) {
		
		sql = "DELETE FROM destinos WHERE id = ?";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setInt(1, destinoId);
			
			preparedStatement.executeUpdate();
			
			System.out.println("--correct delete on destino.");
			
		} catch(SQLException e) {
			
			System.out.println("--incorrect delete on destino. " + e.getMessage());
		}
		
		
	}
	
	public static List<Destino> find(String pesquisa) {
		
		sql = String.format("SELECT*FROM destino WHERE nome like '%s%%' OR cidade LIKE '%s%%' " , pesquisa, pesquisa);
		List<Destino> destinos = new ArrayList<Destino>();
		
		try {
			
			Statement Statement = connection.createStatement();
			ResultSet resultSet = Statement.executeQuery(sql);
			
			while (resultSet.next()) {
				
				Destino destino = new Destino();
				destino.setId(resultSet.getInt("id"));
				destino.setNome(resultSet.getString("nome"));
				destino.setCidade(resultSet.getString("cidade"));
				destino.setEstado(resultSet.getString("estado"));
				
				destinos.add(destino);
			}
			
			System.out.println("--correct find destinos. ");
			return destinos;
			
		} catch(SQLException e) {
			
			System.out.println("--incorrect find destinos. " + e.getMessage());
			return null;
		}
		

		
	}
	
	public static Destino findByPK(int destinoId) {
		
		sql = String.format("SELECT*FROM destino WHERE id=%d " , destinoId);
				
		try {
			
			Statement Statement = connection.createStatement();
			ResultSet resultSet = Statement.executeQuery(sql);
			Destino destino = new Destino();
			
			while (resultSet.next()) {
				
				
				destino.setId(resultSet.getInt("id"));
				destino.setNome(resultSet.getString("nome"));
				destino.setCidade(resultSet.getString("cidade"));
				destino.setEstado(resultSet.getString("estado"));
				
			}
			
			System.out.println("--correct find by PK destinos. ");

			return destino;
			
		} catch(SQLException e) {
			
			System.out.println("--incorrect find by PK destinos. " + e.getMessage());
			return null;
		}
		
	}
	
	public static void update(Destino destino) {
		
sql = "Update destinos SET nome=?, cidade=?, estado WHERE ID=?";
		
		try {
			
			PreparedStatement preparedStatament = connection.prepareStatement(sql);
			
			preparedStatament.setString(1, destino.getNome());
			preparedStatament.setString(2, destino.getCidade());
			preparedStatament.setString(3, destino.getEstado());
			preparedStatament.setInt(4, destino.getId());
			
			preparedStatament.executeUpdate();
			
			System.out.println("--correct update on database. ");

			
		} catch(SQLException e){
			
			System.out.println("--incorrect update on database. " + e.getMessage());
			
		}
		
	}
}
