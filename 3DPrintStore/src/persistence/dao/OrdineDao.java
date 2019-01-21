package persistence.dao;

import java.util.List;

import model.Ordine;

public interface OrdineDao {
	
	public void save(Ordine afferisce);  // Create
	public Ordine findByPrimaryKey(long id);     // Retrieve
	public List<Ordine> findAll();       
	public void update(Ordine afferisce); //Update
	public void delete(Ordine afferisce); //Delete	
	public List<Ordine> findByUtente(String User);
}
