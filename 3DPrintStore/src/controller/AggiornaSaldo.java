package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import persistence.DAOFactory;
import persistence.PostgresDAOFactory;
import model.Utente;
import persistence.dao.UtenteDao;

public class AggiornaSaldo extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		System.out.println(session.getAttribute("username"));
		Utente ut = PostgresDAOFactory.getDAOFactory(DAOFactory.POSTGRESQL).getUtenteDAO().findByPrimaryKey(session.getAttribute("username").toString());
		UtenteDao utenteDao = PostgresDAOFactory.getInstance().getUtenteDAO();
		
		utenteDao.updateSaldo(ut, Integer.parseInt(req.getParameter("saldo")));

		RequestDispatcher dispacher = req.getRequestDispatcher("index.jsp");
		dispacher.forward(req, resp);
		}
	}

