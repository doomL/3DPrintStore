package persistence;

import java.io.FileNotFoundException;

import model.Ordine;
import model.Printer;
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
		OrdineDao ordineDao = factory.getOrdineDAO();
		
		utenteDao.save(new Utente("utente1","utente1@gmail.com","utente1"));
		printerDao.save(new Printer("printer1","printer1@gmail.com","printer1", 0, 0, 0, 0));
		printerDao.save(new Printer("printer2","printer2@gmail.com","printer2",0,0,0,0));
		ordineDao.save(new Ordine(new Utente("utente1","utente1","utente1@gmail.com"),new Printer("printer1","printer1","printer1@gmail.com", 0, 0, 0, 0),500,"PLA","Alta",50,1));
		ordineDao.save(new Ordine(new Utente("utente1","utente1","utente1@gmail.com"),new Printer("printer1","printer1","printer1@gmail.com", 0, 0, 0, 0),250,"ABS","Media",15,2));
		ordineDao.save(new Ordine(utenteDao.findByPrimaryKey("utente1"),printerDao.findByPrimaryKey("printer2"),400,"PLA","Bassa",40,0));
		System.out.println(printerDao.findByPrimaryKey("printer1"));
		System.out.println(utenteDao.findByPrimaryKey("utente1"));

	}

}
