package model;

public class Ordine {
	
	private long id;
	private int prezzo;
	private Utente utente;
	private Printer printer;
	private String materiale;
	private String qualita;
	private int riempimento;
	private int stato;
	public Ordine() {
	}

	
	public Ordine(Utente utente, Printer printer,int prezzo,String materiale,String qualita,int riempimento,int stato) {
		this.prezzo=prezzo;
		this.utente = utente;
		this.printer = printer;
		this.setMateriale(materiale);
		this.setQualita(qualita);
		this.setRiempimento(riempimento);
		this.stato=stato;
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
	public String toString() {
		return id +" "+prezzo+" "+utente.getUserName()+" "+ printer.getUserName();
	}


	public String getMateriale() {
		return materiale;
	}


	public void setMateriale(String materiale) {
		this.materiale = materiale;
	}


	public String getQualita() {
		return qualita;
	}


	public void setQualita(String qualita) {
		this.qualita = qualita;
	}


	public int getRiempimento() {
		return riempimento;
	}


	public void setRiempimento(int riempimento) {
		this.riempimento = riempimento;
	}


	public int getStato() {
		return stato;
	}


	public void setStato(int stato) {
		this.stato = stato;
	}
}
