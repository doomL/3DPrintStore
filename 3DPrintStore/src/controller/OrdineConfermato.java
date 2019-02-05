package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Printer;
import model.Utente;
import persistence.PersistenceException;
import persistence.PostgresDAOFactory;
import persistence.dao.OrdineDao;
import persistence.dao.PrinterDao;
import persistence.dao.UtenteDao;

public class OrdineConfermato extends HttpServlet  {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		
		Utente utente = new Utente();
		Printer printer = new Printer();
		String usernameUtente = (String) session.getAttribute("username");
		String usernamePrinter = req.getParameter("printer_username");
		
		String prezzoString = req.getParameter("prezzo");
		int prezzo = Integer.parseInt(prezzoString);
		
		String fileName = req.getParameter("file_name");
		String materialeAndQualita = req.getParameter("materiale");
		
		String materiale = materialeAndQualita.substring(0, 3);
		String qualita = materialeAndQualita.substring(6);
		
		UtenteDao utenteDao = PostgresDAOFactory.getInstance().getUtenteDAO();
		PrinterDao printerDao = PostgresDAOFactory.getInstance().getPrinterDAO();
		
		try  {
			utente = utenteDao.findByPrimaryKey(usernameUtente);
			printer = printerDao.findByPrimaryKey(usernamePrinter);
			
			//teoricamente impossibile
			if(utente == null || printer == null)  {
				throw new PersistenceException("Il sistema ha problemi a trovare l'utente o il printer");
			}
		} catch(PersistenceException e)  {
			e.printStackTrace();
			return;
		}
		
		//salvo la tupla
		OrdineDao ordineDao = PostgresDAOFactory.getInstance().getOrdineDAO();
		model.Ordine ordine = new model.Ordine(utente, printer, prezzo, materiale, qualita, 0, 0);
		ordineDao.save(ordine);
		
		//aggiorno saldo utente
		utente.setSaldo(utente.getSaldo() - prezzo);
		utenteDao.update(utente);
		
		//aggiorno saldo printer
		printer.setSaldo(printer.getSaldo() + prezzo);
		printerDao.update(printer);
	}
}
