package model;

public class Pagamento {
	
	private long id;
	private int prezzo;
	private Printer printer;
	private String email;
	private int stato;
	public Pagamento() {
	}

	
	public Pagamento(int prezzo,Printer printer,String email,int stato) {
		this.prezzo=prezzo;
		this.printer = printer;
		this.setEmail(email);
		this.stato=stato;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	public int getStato() {
		return stato;
	}


	public void setStato(int stato) {
		this.stato = stato;
	}

	
	

}
