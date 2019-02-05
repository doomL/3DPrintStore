package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Ordine;
import persistence.dao.OrdineDao;
import persistence.dao.PrinterDao;
import persistence.dao.UtenteDao;

public class OrdineDaoJDBC implements OrdineDao{
	private DataSource dataSource;

	public OrdineDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void save(Ordine ordine) {
		Connection connection = this.dataSource.getConnection();
		try {
			Long id = IdBroker.getId(connection);
			ordine.setId(id);
			String insert = "insert into ordine(id,prezzo,utente,printer,materiale,qualita,riempimento,stato) values (?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setLong(1, ordine.getId());
			statement.setLong(2, ordine.getPrezzo());
			statement.setString(3, ordine.getUtente().getUserName());
			statement.setString(4, ordine.getPrinter().getUserName());
			statement.setString(5, ordine.getMateriale());
			statement.setString(6, ordine.getQualita());
			statement.setInt(7, ordine.getRiempimento());
			statement.setInt(8, ordine.getStato());
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

	public Ordine findByPrimaryKey(long id) {
		Connection connection = this.dataSource.getConnection();
		Ordine ordine = null;
		try {
			PreparedStatement statement;
			String query = "select * from ordine where id = ?";
			statement = connection.prepareStatement(query);
			statement.setLong(1, id);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				ordine = new Ordine();
				ordine.setId(result.getLong("id"));		
				ordine.setPrezzo(result.getInt("prezzo"));
				UtenteDao utenteDao=new UtenteDaoJDBC(dataSource);
				ordine.setUtente(utenteDao.findByPrimaryKey(result.getString("utente")));
				PrinterDao printerDao =new PrinterDaoJDBC(dataSource);
				ordine.setPrinter(printerDao.findByPrimaryKey(result.getString("printer")));
				ordine.setMateriale(result.getString("materiale"));
				ordine.setQualita(result.getString("qualita"));
				ordine.setRiempimento(result.getInt("riempimento"));
				ordine.setStato(result.getInt("stato"));
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
		return ordine;
	}

	public List<Ordine> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Ordine> afferiscono = new LinkedList<>();
		try {
			PreparedStatement statement;
			String query = "select * from ordine";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				Ordine ordine = new Ordine();
				ordine.setId(result.getLong("id"));
				ordine.setPrezzo(result.getInt("prezzo"));
				UtenteDao giocatoreDao=new UtenteDaoJDBC(dataSource);
				//giocatoreDao.findByPrimaryKey(result.getLong("giocatore")); !per le chiavi esterne
				ordine.setUtente(giocatoreDao.findByPrimaryKey(result.getString("utente")));
				PrinterDao rosaUtenteDao =new PrinterDaoJDBC(dataSource);
				ordine.setPrinter(rosaUtenteDao.findByPrimaryKey(result.getString("printer")));
				ordine.setMateriale(result.getString("materiale"));
				ordine.setQualita(result.getString("qualita"));
				ordine.setRiempimento(result.getInt("riempimento"));
				ordine.setStato(result.getInt("stato"));
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
		return afferiscono;
	}

	public void update(Ordine ordine) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update ordine SET prezzo = ?,utente=?, printer = ?,materiale= ?, qualita= ?,riempimento= ?,stato=? WHERE id=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setLong(1, ordine.getId());
			statement.setLong(2, ordine.getPrezzo());
			statement.setString(3, ordine.getUtente().getUserName());
			statement.setString(4, ordine.getPrinter().getUserName());
			statement.setString(5, ordine.getMateriale());
			statement.setString(6, ordine.getQualita());
			statement.setInt(7, ordine.getRiempimento());
			statement.setInt(8, ordine.getStato());
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

	public void delete(Ordine ordine) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM ordine WHERE id = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setLong(1, ordine.getId());
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
	public List<Ordine> findByUtente(String user) {
		Connection connection = this.dataSource.getConnection();
		List<Ordine> ordini = new LinkedList<>();
		try {
			PreparedStatement statement;
			String query = "select * from ordine where utente = ? ";
			statement = connection.prepareStatement(query);
			statement.setString(1, user);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				OrdineDao ordineDao = new OrdineDaoJDBC(dataSource);
				Ordine ordine = ordineDao.findByPrimaryKey(result.getLong("id"));
				ordini.add(ordine);
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
		return ordini;
	}

	@Override
	public List<Ordine> findByPrinter(String printer) {
		Connection connection = this.dataSource.getConnection();
		List<Ordine> ordini = new LinkedList<>();
		try {
			PreparedStatement statement;
			String query = "select * from ordine where printer = ? ";
			statement = connection.prepareStatement(query);
			statement.setString(1, printer);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				OrdineDao ordineDao = new OrdineDaoJDBC(dataSource);
				Ordine ordine = ordineDao.findByPrimaryKey(result.getLong("id"));
				ordini.add(ordine);
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
		return ordini;
	}

	@Override
	public void updateStato(Ordine ordine) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update ordine SET stato = ? WHERE id=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setInt(1, (ordine.getStato()+1)%3);
			statement.setLong(2, ordine.getId());
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
