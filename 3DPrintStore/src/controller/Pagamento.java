package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import persistence.PostgresDAOFactory;
import persistence.dao.PrinterDao;

public class Pagamento extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		System.out.println("wadwa");
		HttpSession session=req.getSession();
		PrinterDao printerDao=PostgresDAOFactory.getInstance().getPrinterDAO();
		int diff=printerDao.findByPrimaryKey((String)session.getAttribute("username")).getSaldo()-Integer.parseInt(req.getParameter("choice"))*100;
		PrintWriter out = resp.getWriter();
		if(diff<0) {
			out.write(String.valueOf(-diff));
		}
		
		else {
			out.write("OK");
		}
	}
	
}
