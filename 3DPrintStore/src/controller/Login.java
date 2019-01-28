
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
import persistence.DAOFactory;
import persistence.PostgresDAOFactory;

@SuppressWarnings("serial")
public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		String username = req.getParameter("login_username");
		String password = req.getParameter("login_password");

		System.out.println(username + " " + password);
		Utente ut = PostgresDAOFactory.getDAOFactory(DAOFactory.POSTGRESQL).getUtenteDAO().findByCredential(username, password);
		Printer pt = PostgresDAOFactory.getDAOFactory(DAOFactory.POSTGRESQL).getPrinterDAO().findByCredential(username, password);

		//System.out.println(ut.toString());
		req.setAttribute("wrong", false);
		if (ut != null) {
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			session.setAttribute("email", ut.getEmail());
			session.setAttribute("loggato", true);
			req.setAttribute("loggato", true);

			session.setAttribute("utente", ut);
			req.setAttribute("utente", ut);
			session.setAttribute("isprinter", false);
			RequestDispatcher disp;
			disp = req.getRequestDispatcher("/index.jsp");
			disp.forward(req, resp);
		}
		else if (pt != null) {
			System.out.println(pt.toString());
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			session.setAttribute("email", pt.getEmail());
			session.setAttribute("loggato", true);
			req.setAttribute("loggato", true);
			session.setAttribute("isprinter", true);
			
			session.setAttribute("printer", pt);
			req.setAttribute("printer", pt);
			RequestDispatcher disp;
			disp = req.getRequestDispatcher("/index.jsp");
			disp.forward(req, resp);
		} 
		else {
			req.setAttribute("wrong", true);

			RequestDispatcher disp;
			disp = req.getRequestDispatcher("/login.jsp");
			disp.forward(req, resp);
		}
	}

}
