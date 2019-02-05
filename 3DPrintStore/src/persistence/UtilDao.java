package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UtilDao {

	private DataSource dataSource;
	
	public UtilDao(DataSource dataSource) {
		this.dataSource=dataSource;
	}

public void dropDatabase(){
	
	Connection connection = dataSource.getConnection();
	try {
		String delete = "drop SEQUENCE if EXISTS sequenza_id;"
				+ "drop table if exists ordine;"
				+ "drop table if exists pagamento;"
				+ "drop table if exists utente;"
				+ "drop table if exists printer";
		PreparedStatement statement = connection.prepareStatement(delete);
		
		statement.executeUpdate();
		System.out.println("Executed drop database");
		
	} catch (SQLException e) {
		
		throw new PersistenceException(e.getMessage());
	} finally {
		try {
			connection.close();
		} catch (SQLException e) {
			
			throw new PersistenceException(e.getMessage());
		}
	}
}

public void createDatabase(){
	
	Connection connection = dataSource.getConnection();
	try {
		
		String create = "create SEQUENCE sequenza_id;"
				+ "create table utente(\"username\" varchar(255) primary key,email varchar(255),password varchar(255),saldo int);"
				+ "create table printer(\"username\" varchar(255) primary key,email varchar(255),password varchar(255),saldo int,numStampanti int,numStampantiDisp int,latitudine double precision,longitudine double precision);"
				+ "create table ordine(\"id\" bigint primary key,prezzo int,utente varchar(255) REFERENCES utente(\"username\"),printer varchar(255) REFERENCES printer(\"username\"),materiale varchar(255),qualita varchar(255),riempimento int,stato int);"
				+ "create table pagamento(\"id\" bigint primary key,prezzo int,printer varchar(255) REFERENCES printer(\"username\"),email varchar(255),stato int);";
		PreparedStatement statement = connection.prepareStatement(create);
		
		statement.executeUpdate();
		System.out.println("Executed create database");
		
	} catch (SQLException e) {
		
		throw new PersistenceException(e.getMessage());
	} finally {
		try {
			connection.close();
		} catch (SQLException e) {
			
			throw new PersistenceException(e.getMessage());
		}
	}
}


public  void resetDatabase() {
		
		Connection connection = dataSource.getConnection();
		try {
			String delete = "delete FROM ordine";
			PreparedStatement statement = connection.prepareStatement(delete);
			
			delete = "delete FROM pagamento";
			statement = connection.prepareStatement(delete);
			statement.executeUpdate();
			
			
			delete = "delete FROM printer";
			statement = connection.prepareStatement(delete);
			
			delete = "delete FROM utente";
			statement = connection.prepareStatement(delete);
			
			
			
			statement.executeUpdate();
		} catch (SQLException e) {
			
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				
				throw new PersistenceException(e.getMessage());
			}
		}
	}
}

