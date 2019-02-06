package persistence;

import java.io.FileNotFoundException;

import model.Ordine;
import model.Pagamento;
import model.Printer;
import model.Utente;
import persistence.dao.OrdineDao;
import persistence.dao.PagamentoDao;
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
		PagamentoDao pagamentoDao = factory.getPagamentoDAO();
		
		utenteDao.save(new Utente("utente1","utente1@gmail.com","utente1"));
		printerDao.save(new Printer("printer1","printer1@gmail.com","printer1", 4, 2, 36.5930, 12.2364));
		printerDao.save(new Printer("printer2","printer2@gmail.com","printer2",3, 1,39.3621358, 16.2263));
		ordineDao.save(new Ordine(new Utente("utente1","utente1","utente1@gmail.com"),new Printer("printer1","printer1","printer1@gmail.com", 0, 0, 0, 0),500,"PLA","ULTRA",50,"05_02_2019-04_28_34",1));
		ordineDao.save(new Ordine(new Utente("utente1","utente1","utente1@gmail.com"),new Printer("printer1","printer1","printer1@gmail.com", 0, 0, 0, 0),250,"ABS","HIGH",15,"05_02_2019-04_28_34",2));
		ordineDao.save(new Ordine(utenteDao.findByPrimaryKey("utente1"),printerDao.findByPrimaryKey("printer2"),400,"PLA","PLUS",40,"05_02_2019-04_28_34",0));
		pagamentoDao.save(new Pagamento(5,printerDao.findByPrimaryKey("printer1"),"printer1@gmail.com",1));
		System.out.println(printerDao.findByPrimaryKey("printer1"));
		System.out.println(utenteDao.findByPrimaryKey("utente1"));

		System.out.println(pagamentoDao.findAll());
	}

}
