package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import model.Printer;
import persistence.PostgresDAOFactory;
import persistence.dao.PrinterDao;
import javax.servlet.http.*;

public class Ordine extends HttpServlet  {
	
	private static final DateFormat sdf = new SimpleDateFormat("dd_MM_yyyy-HH_mm_ss");
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String materiale = "";
		String colore = "";
		String prezzoString = "";
		String lunghezza = "";
		String larghezza = "";
		String altezza = "";
		
		try {
	        List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(req);
	        for (FileItem item : items) {
	            if (item.isFormField()) {
	                // Process regular form field (input type="text|radio|checkbox|etc", select, etc).
	            	
	                if(item.getFieldName().equals("materiale"))  {
	                	materiale = item.getString();
	                } else if(item.getFieldName().equals("colore"))  {
	                	colore = item.getString();
	                } else if(item.getFieldName().equals("prezzo"))  {
	                	prezzoString = item.getString();
	                }  else if(item.getFieldName().equals("lunghezza"))  {
	                	lunghezza = item.getString();
	                }  else if(item.getFieldName().equals("larghezza"))  {
	                	larghezza = item.getString();
	                }  else if(item.getFieldName().equals("altezza"))  {
	                	altezza = item.getString();
	                }
	                
	            } else {
	                // Process form file field (input type="file").
	            	
	            	// String fieldName = item.getFieldName();
	                //String fileName = FilenameUtils.getName(item.getName());
	                
	            	//nuovo nome file
	            	Date date = new Date();
	            	String nameFile = sdf.format(date);
	                
	                InputStream fileContent = item.getInputStream();
	                
	                try  {
		                byte[] buffer = new byte[fileContent.available()];
		                fileContent.read(buffer);
		                
		                String relativeWebPath = "/STUFF/read.txt";
		                String absoluteDiskPath = getServletContext().getRealPath(relativeWebPath);
		                String path = absoluteDiskPath.replaceAll("STUFF", "files");
		                path = path.replaceAll("read.txt", nameFile + ".stl");
		                
		                File file = new File(path);
		                
		                OutputStream outStream = new FileOutputStream(file);
		                outStream.write(buffer);
		                
		                System.out.println("File " + nameFile + ".stl" + " correttamento salvato");
	                }
	                catch(Exception e)  {
	                	e.printStackTrace();
	                }
	            }
	        }
	    } catch (FileUploadException e) {
	        throw new ServletException("Cannot parse multipart request.", e);
	    }
		
		PrinterDao printersDao = PostgresDAOFactory.getInstance().getPrinterDAO();
		List<Printer> printers = printersDao.findAll();
		
		req.setAttribute("printers", printers);
		req.setAttribute("materiale", materiale);
		req.setAttribute("colore", colore);
		req.setAttribute("lunghezza", lunghezza);
		req.setAttribute("larghezza", larghezza);
		req.setAttribute("altezza", altezza);
		
		//converto in printcoin
		double prezzoDouble = Double.valueOf(prezzoString);
		prezzoDouble *= 100;
		int prezzo = (int) prezzoDouble;
		req.setAttribute("prezzo", prezzo);
		
		System.out.println("Info stampa: ");
		System.out.println("\tMateriale: " + req.getAttribute("materiale"));
		System.out.println("\tColore: " + req.getAttribute("colore"));
		System.out.println("\tPrezzo: " + req.getAttribute("prezzo"));
		System.out.println("\tLunghezza: " + req.getAttribute("lunghezza"));
		System.out.println("\tLarghezza: " + req.getAttribute("larghezza"));
		System.out.println("\tAltezza: " + req.getAttribute("altezza"));
		
		RequestDispatcher dispacher = req.getRequestDispatcher("ordine.jsp");
		dispacher.forward(req, resp);
	}
}
