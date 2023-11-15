package org.sid.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class users {
	@Id
	private int codeUser;
	private  String login;
	private  String pass;

	public int getCodeUser() {
		return codeUser;
	}
	public void setCodeUser(int codeUser) {
		this.codeUser = codeUser;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	public users(int codeUser, String login, String pass) {
		super();
		this.codeUser = codeUser;
		this.login = login;
		this.pass = pass;
		
	}
	public users() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
