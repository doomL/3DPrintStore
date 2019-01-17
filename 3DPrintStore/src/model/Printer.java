package model;

public class Printer {
	
	private String userName;
	private String email;
	private String password;
	private int saldo;
	private int numStampanti;
	private int numStampantiDisp;
	private double latitudine;
	private double longitudine;
	
	public Printer() {
		
	}
	
	public Printer(String userName, String email, String password,int numStampanti, int numStampantiDisp,double latitudine,double longitudine) {
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.saldo=100;
		this.numStampanti=numStampanti;
		this.numStampantiDisp=numStampantiDisp;
		this.setLatitudine(latitudine);
		this.setLongitudine(longitudine);
	}
	
	public Printer(String userName) {
		this.userName=userName;
		this.email=" ";
		this.password=" ";
		this.saldo=0;
		this.numStampanti=0;
		this.numStampantiDisp=0;
		this.setLatitudine(0);
		this.setLongitudine(0);
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getSaldo() {
		return saldo;
	}
	
	public void setSaldo(int saldo) {
		this.saldo = saldo;
	}
	
	public boolean equals(Object object) {
		Printer utente = (Printer)object;
		return (this.getEmail() == utente.getEmail());
	}
	public String toString() {
		return userName+" "+email+" "+password+" "+saldo+" "+numStampanti+" "+numStampantiDisp;
	}

	public int getNumStampanti() {
		return numStampanti;
	}

	public void setNumStampanti(int numStampanti) {
		this.numStampanti = numStampanti;
	}

	public int getNumStampantiDisp() {
		return numStampantiDisp;
	}

	public void setNumStampantiDisp(int numStampantiDisp) {
		this.numStampantiDisp = numStampantiDisp;
	}

	public double getLatitudine() {
		return latitudine;
	}

	public void setLatitudine(double latitudine) {
		this.latitudine = latitudine;
	}

	public double getLongitudine() {
		return longitudine;
	}

	public void setLongitudine(double longitudine) {
		this.longitudine = longitudine;
	}


}
