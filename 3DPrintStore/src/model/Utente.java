package model;

public class Utente {
	
	private String userName;
	private String email;
	private String password;
	private int saldo;
	
	public Utente() {
	}
	
	public Utente(String userName, String email, String password) {
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.saldo=100;
	}
	
	public Utente(String userName) {
		this.userName=userName;
		this.email=" ";
		this.password=" ";
		this.saldo=0;
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
		Utente utente = (Utente)object;
		return (this.getEmail() == utente.getEmail());
	}
	public String toString() {
		return userName+" "+email+" "+password+" "+saldo;
	}


}
