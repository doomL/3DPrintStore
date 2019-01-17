package persistence;

import java.io.FileNotFoundException;

import model.Utente;
import persistence.dao.OrdineDao;
import persistence.dao.PrinterDao;
import persistence.dao.UtenteDao;
public class MainJDBC {

	public static void main(String args[]) throws FileNotFoundException {

		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtilDao util = factory.getUtilDAO();
		util.dropDatabase();

		util.createDatabase();

		UtenteDao utenteDao = factory.getUtenteDAO();
		PrinterDao printerDao = factory.getPrinterDAO();
		OrdineDao afferisceDao = factory.getOrdineDAO();
		
		utenteDao.save(new Utente("utente1","utente1","utente1@gmail.com"));
		utenteDao.findByPrimaryKey("utente1");
	}

}
