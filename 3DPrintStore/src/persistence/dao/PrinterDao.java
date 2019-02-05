package persistence.dao;

import java.util.List;

import model.Printer;
import persistence.PrinterCredenziali;

public interface PrinterDao {
	

	public void save(Printer printer);  // Create
	public Printer findByPrimaryKey(String username);     // Retrieve
	public List<Printer> findAll();       
	public void update(Printer printer); //Update
	public void delete(Printer printer); //Delete	
	
	public void setPassword(Printer printer, String password);
	public static  PrinterCredenziali findByPrimaryKeyCredential(String username) {
		// TODO Auto-generated method stub
		return null;
	}     // Retrieve
	public Printer findByCredential(String username, String password);
	void updateSaldo(Printer printer, int saldo);

}
