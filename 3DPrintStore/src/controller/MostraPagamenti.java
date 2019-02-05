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

public class MostraPagamenti extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		PagamentoDao pagamentiDao = PostgresDAOFactory.getInstance().getPagamentoDAO();
		
		List<Pagamento> pagamenti = pagamentiDao.findAll();

		req.setAttribute("pagamenti", pagamenti);

		for (int i = 0; i < pagamenti.size(); i++)
			System.out.println("ID: "+pagamenti.get(i).getId()+" Stato: "+pagamenti.get(i).getStato());

		RequestDispatcher dispacher = req.getRequestDispatcher("admin.jsp");
		dispacher.forward(req, resp);
	}

}
