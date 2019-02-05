package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Printer;
import persistence.dao.PrinterDao;

public class PrinterDaoJDBC implements PrinterDao {
	
	private DataSource dataSource;

	public PrinterDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void save(Printer printer) {
		Connection connection = this.dataSource.getConnection();
		try {
			String insert = "insert into printer(username, email, password,saldo,numStampanti,numStampantiDisp,latitudine,longitudine) values (?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, printer.getUserName());
			statement.setString(2, printer.getEmail());
			statement.setString(3, printer.getPassword());
			statement.setInt(4, printer.getSaldo());
			statement.setInt(5, printer.getNumStampanti());
			statement.setInt(6, printer.getNumStampantiDisp());
			statement.setDouble(7, printer.getLatitudine());
			statement.setDouble(8, printer.getLongitudine());
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

	public Printer findByPrimaryKey(String username) {
		Connection connection = this.dataSource.getConnection();
		Printer printer = null;
		try {
			PreparedStatement statement;
			String query = "select * from printer where username = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, username);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				printer = new Printer();
				printer.setUserName(result.getString("username"));				
				printer.setEmail(result.getString("email"));
				printer.setPassword(result.getString("password"));
				printer.setSaldo(result.getInt("saldo"));
				printer.setNumStampanti(result.getInt("numStampanti"));
				printer.setNumStampantiDisp(result.getInt("numStampantiDisp"));
				printer.setLatitudine(result.getDouble("latitudine"));
				printer.setLongitudine(result.getDouble("longitudine"));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}	
		return printer;
	}
	public Printer findByCredential(String username,String password) {
		Connection connection = this.dataSource.getConnection();
		Printer printer = null;
		try {
			PreparedStatement statement;
			String query = "select * from printer where username = ? and password = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, username);
			statement.setString(2, password);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				printer = new Printer();
				printer.setUserName(result.getString("username"));				
				printer.setEmail(result.getString("email"));
				printer.setPassword(result.getString("password"));
				printer.setSaldo(result.getInt("saldo"));
				printer.setNumStampanti(result.getInt("numStampanti"));
				printer.setNumStampantiDisp(result.getInt("numStampantiDisp"));
				printer.setLatitudine(result.getDouble("latitudine"));
				printer.setLongitudine(result.getDouble("longitudine"));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}	
		return printer;
	}
	
	
	public PrinterCredenziali findByPrimaryKeyCredential(String username) {
		Printer pt = findByPrimaryKey(username);
		PrinterCredenziali ptCred = null;
		if (pt != null){
			ptCred = new PrinterCredenziali(dataSource);
			ptCred.setUserName(pt.getUserName());
			ptCred.setEmail(pt.getEmail());
			ptCred.setPassword(pt.getPassword());	
			ptCred.setSaldo(pt.getSaldo());
			ptCred.setNumStampanti(pt.getNumStampanti());
			ptCred.setNumStampantiDisp(pt.getNumStampantiDisp());
			ptCred.setLatitudine(pt.getLatitudine());
			ptCred.setLongitudine(pt.getLongitudine());

		}
		return ptCred;
	}

	public List<Printer> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Printer> printers = new LinkedList<>();
		try {
			Printer printer;
			PreparedStatement statement;
			String query = "select * from printer";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				printer = new Printer();
				printer.setUserName(result.getString("username"));				
				printer.setEmail(result.getString("email"));
				printer.setPassword(result.getString("password"));
				printer.setSaldo(result.getInt("saldo"));
				printer.setNumStampanti(result.getInt("numStampanti"));
				printer.setNumStampantiDisp(result.getInt("numStampantiDisp"));
				printer.setLatitudine(result.getDouble("latitudine"));
				printer.setLongitudine(result.getDouble("longitudine"));
				printers.add(printer);
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		}	 finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		return printers;
	}

	public void update(Printer printer) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update printer SET email = ?, password = ?,saldo=?,numStampanti=?,numStampantiDisp=?,latitudine=?,longitudine=? WHERE username=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, printer.getEmail());
			statement.setString(2, printer.getPassword());
			statement.setInt(3, printer.getSaldo());
			statement.setInt(4, printer.getNumStampanti());
			statement.setInt(5, printer.getNumStampantiDisp());
			statement.setDouble(6, printer.getLatitudine());
			statement.setDouble(7, printer.getLongitudine());
			statement.setString(8, printer.getUserName());
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

	public void delete(Printer printer) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM printer WHERE username = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, printer.getUserName());
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
	
	@Override
	public void setPassword(Printer printer, String password) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update printer SET password = ? WHERE username=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, password);
			statement.setString(2, printer.getUserName());
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
