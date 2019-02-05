package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONWriter;

import com.google.gson.stream.JsonWriter;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

import persistence.DAOFactory;
import persistence.PostgresDAOFactory;
import model.Utente;
import persistence.dao.PrinterDao;
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
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		
		if((boolean) session.getAttribute("isprinter")) {
			PrinterDao printerDao=PostgresDAOFactory.getInstance().getPrinterDAO();
			printerDao.updateSaldo(printerDao.findByPrimaryKey((String)session.getAttribute("username")), Integer.parseInt(req.getParameter("hash"))/1000);
			printerDao.findByPrimaryKey((String)session.getAttribute("username")).getSaldo();
		}
		else {
			UtenteDao utenteDao=PostgresDAOFactory.getInstance().getUtenteDAO();
			utenteDao.updateSaldo(utenteDao.findByPrimaryKey((String)session.getAttribute("username")),Integer.parseInt(req.getParameter("hash"))/1000);
			utenteDao.findByPrimaryKey((String)session.getAttribute("username")).getSaldo();
		}
		
//		try {
//			Unirest unirest = null;
//			System.out.println(session.getAttribute("username"));
//			HttpResponse<JsonNode> jsonResponse = unirest.post("https://api.coinhive.com/user/withdraw?name=john-doe&amount=1&secret=aecSQmjqUVBbHfwa6Ko6ARAKSVGy4MJ5")
////					.header("accept", "application/json")
//					.queryString("name", "printer1")
//					.queryString("amount", 1000)
//					  .queryString("secret", "aecSQmjqUVBbHfwa6Ko6ARAKSVGy4MJ5")
//					  .asJson();
//			System.out.println(jsonResponse.getBody());
//			System.out.println(unirest);
//		} catch (UnirestException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}
	}

