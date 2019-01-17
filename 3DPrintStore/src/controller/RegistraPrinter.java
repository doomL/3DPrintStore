package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persistence.PostgresDAOFactory;
import model.Printer;
import model.Utente;
import persistence.dao.PrinterDao;
import persistence.dao.UtenteDao;

public class RegistraPrinter extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// HttpSession session=req.getSession();
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		Double lat = Double.parseDouble(req.getParameter("lat"));
		Double lng = Double.parseDouble(req.getParameter("lng"));	
		PrinterDao printerDao = PostgresDAOFactory.getInstance().getPrinterDAO();
		if(printerDao.findByPrimaryKey(username)!=null) {
				req.setAttribute("esistente", true);
				
				RequestDispatcher dispacher = req.getRequestDispatcher("registrazione.jsp");
				dispacher.forward(req, resp);
		}
		else {
		Printer pt = new Printer(username, email, password, 0, 0,lat,lng);
		printerDao.save(pt);
		printerDao.setPassword(pt, password);

		// session.setAttribute("utente", ut);
		System.out.println("utente: " + pt.getUserName() + " registrato con successo");
		System.out.println(lat + " "+ lng);
		RequestDispatcher dispacher = req.getRequestDispatcher("index.jsp");
		dispacher.forward(req, resp);
		}
	}
}
