package model;

public class Printer {
	
	private String userName;
	private String email;
	private String password;
	private int saldo;
	private int numStampanti;
	private int numStampantiDisp;
	
	public Printer() {
	}
	
	public Printer(String userName, String email, String password,int numStampanti, int numStampantiDisp) {
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.saldo=100;
		this.numStampanti=numStampanti;
		this.numStampantiDisp=numStampantiDisp;
	}
	
	public Printer(String userName) {
		this.userName=userName;
		this.email=" ";
		this.password=" ";
		this.saldo=0;
		this.numStampanti=0;
		this.numStampantiDisp=0;
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


}
