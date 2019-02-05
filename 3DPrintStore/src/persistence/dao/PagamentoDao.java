package persistence.dao;

import java.util.List;

import model.Pagamento;

public interface PagamentoDao {
	
	public void save(Pagamento pagamento);  // Create
	public Pagamento findByPrimaryKey(long id);     // Retrieve
	public List<Pagamento> findAll();       
	public void update(Pagamento pagamento); //Update
	public void delete(Pagamento pagamento); //Delete	
	public void updateStato(Pagamento pagamento);
	public List<Pagamento> findByPrinter(String printer);
}
