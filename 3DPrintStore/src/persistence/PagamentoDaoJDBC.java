package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Ordine;
import model.Pagamento;
import persistence.dao.OrdineDao;
import persistence.dao.PagamentoDao;
import persistence.dao.PrinterDao;
import persistence.dao.UtenteDao;

public class PagamentoDaoJDBC implements PagamentoDao{
	private DataSource dataSource;

	public PagamentoDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void save(Pagamento pagamento) {
		Connection connection = this.dataSource.getConnection();
		try {
			Long id = IdBroker.getId(connection);
			pagamento.setId(id);
			String insert = "insert into pagamento(id,prezzo,printer,email,stato) values (?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setLong(1, pagamento.getId());
			statement.setLong(2, pagamento.getPrezzo());
			statement.setString(3, pagamento.getPrinter().getUserName());
			statement.setString(4, pagamento.getEmail());
			statement.setInt(5, pagamento.getStato());
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

	public Pagamento findByPrimaryKey(long id) {
		Connection connection = this.dataSource.getConnection();
		Pagamento pagamento = null;
		try {
			PreparedStatement statement;
			String query = "select * from pagamento where id = ?";
			statement = connection.prepareStatement(query);
			statement.setLong(1, id);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				pagamento = new Pagamento();
				pagamento.setId(result.getLong("id"));		
				pagamento.setPrezzo(result.getInt("prezzo"));
				UtenteDao utenteDao=new UtenteDaoJDBC(dataSource);
				PrinterDao printerDao =new PrinterDaoJDBC(dataSource);
				pagamento.setPrinter(printerDao.findByPrimaryKey(result.getString("printer")));
				pagamento.setEmail(result.getString("email"));
				pagamento.setStato(result.getInt("stato"));
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
		return pagamento;
	}

	public List<Pagamento> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Pagamento> pagamenti = new LinkedList<>();
		try {
			PreparedStatement statement;
			String query = "select * from pagamento";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				Pagamento pagamento = new Pagamento();
				pagamento.setId(result.getLong("id"));
				pagamento.setPrezzo(result.getInt("prezzo"));
				PrinterDao printerDao =new PrinterDaoJDBC(dataSource);
				pagamento.setPrinter(printerDao.findByPrimaryKey(result.getString("printer")));
				pagamento.setEmail(result.getString("email"));
				pagamento.setStato(result.getInt("stato"));
				pagamenti.add(pagamento);
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
		return pagamenti;
	}

	public void update(Pagamento pagamento) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update pagamento SET prezzo = ?, printer = ?,email= ?,stato=? WHERE id=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setLong(1, pagamento.getId());
			statement.setLong(2, pagamento.getPrezzo());
			statement.setString(4, pagamento.getPrinter().getUserName());
			statement.setString(5, pagamento.getEmail());
			statement.setInt(8, pagamento.getStato());
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

	public void delete(Pagamento pagamento) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM pagamento WHERE id = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setLong(1, pagamento.getId());
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
	public void updateStato(Pagamento pagamento) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update pagamento SET stato = ? WHERE id=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setInt(1, (pagamento.getStato()+1)%3);
			statement.setLong(2, pagamento.getId());
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
	public List<Pagamento> findByPrinter(String printer) {
		Connection connection = this.dataSource.getConnection();
		List<Pagamento> pagamenti = new LinkedList<>();
		try {
			PreparedStatement statement;
			String query = "select * from pagamento where printer = ? ";
			statement = connection.prepareStatement(query);
			statement.setString(1, printer);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				PagamentoDao pagamentoDao = new PagamentoDaoJDBC(dataSource);
				Pagamento pagamento = pagamentoDao.findByPrimaryKey(result.getLong("id"));
				pagamenti.add(pagamento);
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
		return pagamenti;
	}
}
