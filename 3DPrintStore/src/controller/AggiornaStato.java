package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ordine;
import model.Pagamento;
import persistence.DAOFactory;
import persistence.PostgresDAOFactory;
import persistence.dao.OrdineDao;
import persistence.dao.PagamentoDao;

public class AggiornaStato extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Pagamento pagamento = PostgresDAOFactory.getDAOFactory(DAOFactory.POSTGRESQL).getPagamentoDAO()
				.findByPrimaryKey(Integer.parseInt(req.getParameter("id")));
		PagamentoDao pagamentoDao = PostgresDAOFactory.getInstance().getPagamentoDAO();
		pagamentoDao.updateStato(pagamento);
		
		RequestDispatcher dispacher = req.getRequestDispatcher("mostraPagamenti");
		dispacher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		System.out.println(req.getParameter("id"));
//		System.out.println("Aggiorna Stato"+ Integer.parseInt(req.getParameter("id")));
		Ordine ordine = PostgresDAOFactory.getDAOFactory(DAOFactory.POSTGRESQL).getOrdineDAO()
				.findByPrimaryKey(Long.parseLong(req.getParameter("id")));
		OrdineDao ordineDao = PostgresDAOFactory.getInstance().getOrdineDAO();
		ordineDao.updateStato(ordine);
		
		RequestDispatcher dispacher = req.getRequestDispatcher("mostraOrdini");
		dispacher.forward(req, resp);
	}
	

}
