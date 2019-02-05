package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;


public class coinhive extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println();
		HttpSession session = req.getSession();
		try {
			HttpResponse<JsonNode> jsonResponse = Unirest.post("https://api.coinhive.com/user/withdraw")
					  .header("accept", "application/json")
					  .queryString("apiKey", "aecSQmjqUVBbHfwa6Ko6ARAKSVGy4MJ5")
					  .field("name", (String)session.getAttribute("user"))
					  .field("amount", "1000")
					  .asJson();
			System.out.println((String)session.getAttribute("user"));
			System.out.println(jsonResponse);
		} catch (UnirestException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println();
		HttpSession session = req.getSession();
		try {
			HttpResponse<JsonNode> jsonResponse = Unirest.post("https://api.coinhive.com/user/withdraw")
					  .header("accept", "application/json")
					  .queryString("apiKey", "aecSQmjqUVBbHfwa6Ko6ARAKSVGy4MJ5")
					  .field("name", (String)session.getAttribute("user"))
					  .field("amount", "1000")
					  .asJson();
			System.out.println((String)session.getAttribute("user"));
			System.out.println(jsonResponse);
		} catch (UnirestException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
