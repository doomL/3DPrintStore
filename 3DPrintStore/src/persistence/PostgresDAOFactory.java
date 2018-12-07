package persistence;

import persistence.dao.OrdineDao;
import persistence.dao.PrinterDao;
import persistence.dao.UtenteDao;

public class PostgresDAOFactory extends DAOFactory {

	private static DataSource dataSource;
	private static PostgresDAOFactory factory;

	// --------------------------------------------

	static {
		try {
			//Class.forName("org.postgresql.Driver").newInstance();
			//remoto
		dataSource = new DataSource("jdbc:postgresql://packy.db.elephantsql.com:5432/pgkpujyt", "pgkpujyt", "vx9rrhY-JhvBO_S21R9gA78EWiNfjrQ1");
			//locale
		//dataSource=new DataSource("jdbc:postgresql://localhost:5432/3DPrintStore","postgres","postgres");
		} catch (Exception e) {
			System.err.println("PostgresDAOFactory.class: failed to load MySQL JDBC driver\n" + e);
			e.printStackTrace();
		}
	}
	

	public static PostgresDAOFactory getInstance(){
		if (factory == null){
			factory = new PostgresDAOFactory();
		}
		return factory;
	}
	// --------------------------------------------

	
	@Override
	public UtilDao getUtilDAO() {
		return new UtilDao(dataSource);
	}
	
	@Override
	public UtenteDao getUtenteDAO() {
		return new UtenteDaoJDBC(dataSource);
	}
	@Override
	public OrdineDao getOrdineDAO() {
		return new OrdineDaoJDBC(dataSource);
	}
	@Override
	public PrinterDao getPrinterDAO() {
		return new PrinterDaoJDBC(dataSource);
	}
	


}
