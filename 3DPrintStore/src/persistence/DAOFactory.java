package persistence;


import persistence.dao.OrdineDao;
import persistence.dao.PagamentoDao;
import persistence.dao.PrinterDao;
import persistence.dao.UtenteDao;

public abstract class DAOFactory {

	public static final int HSQLDB = 1;
	
	public static final int POSTGRESQL = 2;

	public static DAOFactory getDAOFactory(int whichFactory) {
		switch ( whichFactory ) {
		
		case HSQLDB:
			return null;//new HsqldbDAOFactory();
		case POSTGRESQL:
			return new PostgresDAOFactory();
		default:
			return null;
		}
	}
	
	public abstract UtilDao getUtilDAO();
	
	public abstract UtenteDao getUtenteDAO();
	
	public abstract OrdineDao getOrdineDAO();

	public abstract PrinterDao getPrinterDAO();
	
	public abstract PagamentoDao getPagamentoDAO();
	
}
