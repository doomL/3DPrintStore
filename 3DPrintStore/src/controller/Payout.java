package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Pagamento;
import model.Printer;
import persistence.PostgresDAOFactory;
import persistence.dao.PagamentoDao;
import persistence.dao.PrinterDao;
import persistence.dao.UtenteDao;

public class Payout extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		int prezzo=Integer.parseInt(req.getParameter("prezzo"));
		String username = (String) session.getAttribute("username");
		String email = req.getParameter("email");
		PrinterDao printerDao=PostgresDAOFactory.getInstance().getPrinterDAO();
		Printer printer=printerDao.findByPrimaryKey(username);
		if(printer.getSaldo()<prezzo*100) {
			return;
		}
		System.out.println(printer);
		PagamentoDao pagamentoDao = PostgresDAOFactory.getInstance().getPagamentoDAO();
		Pagamento pagamento = new Pagamento(prezzo,printer,email,1);
		printerDao.updateSaldo(printer, prezzo*100);;
		pagamentoDao.save(pagamento);
		
		RequestDispatcher dispacher = req.getRequestDispatcher("index.jsp");
		dispacher.forward(req, resp);
	}
}
