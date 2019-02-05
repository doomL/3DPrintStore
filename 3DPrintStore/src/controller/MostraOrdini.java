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
import model.Pagamento;
import persistence.PostgresDAOFactory;
import persistence.dao.OrdineDao;
import persistence.dao.PagamentoDao;

public class MostraOrdini extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if(session.getAttribute("loggato")==null) {
			RequestDispatcher dispacher = req.getRequestDispatcher("login.jsp");
			dispacher.forward(req, resp);
			return;
		}
			
		OrdineDao ordiniDao = PostgresDAOFactory.getInstance().getOrdineDAO();
		PagamentoDao pagamentoDao=PostgresDAOFactory.getInstance().getPagamentoDAO();
		List<Pagamento> pagamenti;
		List<Ordine> ordini;
		if((boolean) session.getAttribute("isprinter")) {
			String printer;
			try  {
				printer = session.getAttribute("username").toString();
			} catch(Exception e)  {
				RequestDispatcher dispacher = req.getRequestDispatcher("dashboard.jsp");
				dispacher.forward(req, resp);
				return;
			}
			ordini = ordiniDao.findByPrinter(printer);
			pagamenti = pagamentoDao.findByPrinter(printer);
			req.setAttribute("pagamenti", pagamenti);
			
		}
		else {
		String utente;
		try  {
			utente = session.getAttribute("username").toString();
		} catch(Exception e)  {
			RequestDispatcher dispacher = req.getRequestDispatcher("dashboard.jsp");
			dispacher.forward(req, resp);
			return;
		}
		ordini = ordiniDao.findByUtente(utente);
		}
		req.setAttribute("ordini", ordini);

//		for (int i = 0; i < ordini.size(); i++)
//			System.out.println(ordini.get(i).getStato());

		RequestDispatcher dispacher = req.getRequestDispatcher("dashboard.jsp");
		dispacher.forward(req, resp);
	}

}
