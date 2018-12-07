package model;

public class Ordine {
	
	private long id;
	private int prezzo;
	private Utente utente;
	private Printer printer;
	
	public Ordine() {
	}

	
	public Ordine(Utente utente, Printer printer,int prezzo) {
		this.prezzo=prezzo;
		this.utente = utente;
		this.printer = printer;
		
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Utente getUtente() {
		return utente;
	}

	public void setUtente(Utente utente) {
		this.utente = utente;
	}

	public Printer getPrinter() {
		return printer;
	}

	public void setPrinter(Printer printer) {
		this.printer = printer;
	}


	public int getPrezzo() {
		return prezzo;
	}


	public void setPrezzo(int prezzo) {
		this.prezzo = prezzo;
	}


	
	

}
