package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ordine;
import persistence.PostgresDAOFactory;
import persistence.dao.OrdineDao;

public class MostraOrdini extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		OrdineDao ordiniDao = PostgresDAOFactory.getInstance().getOrdineDAO();
		
		String utente;
		try  {
			utente = session.getAttribute("username").toString();
		} catch(Exception e)  {
			RequestDispatcher dispacher = req.getRequestDispatcher("dashboard.jsp");
			dispacher.forward(req, resp);
			return;
		}
		List<Ordine> ordini = ordiniDao.findByUtente(utente);

		req.setAttribute("ordini", ordini);

		for (int i = 0; i < ordini.size(); i++)
			System.out.println(ordini.get(i).getStato());

		RequestDispatcher dispacher = req.getRequestDispatcher("dashboard.jsp");
		dispacher.forward(req, resp);
	}

}
