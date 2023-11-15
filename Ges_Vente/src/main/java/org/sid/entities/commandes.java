package org.sid.entities;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class commandes {
	@Id
	private int codeCmd;
	private String client;
	private int codePdt;
	private int qteCmd;
	private Date dateCmd;
	public int getCodeCmd() {
		return codeCmd;
	}
	public void setCodeCmd(int codeCmd) {
		this.codeCmd = codeCmd;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public int getCodePdt() {
		return codePdt;
	}
	public void setCodePdt(int codePdt) {
		this.codePdt = codePdt;
	}
	public int getQteCmd() {
		return qteCmd;
	}
	public void setQteCmd(int qteCmd) {
		this.qteCmd = qteCmd;
	}
	public Date getDateCmd() {
		return dateCmd;
	}
	public void setDateCmd(Date dateCmd) {
		this.dateCmd = dateCmd;
	}
	public commandes(int codeCmd, String client, int codePdt, int qteCmd, Date dateCmd) {
		super();
		this.codeCmd = codeCmd;
		this.client = client;
		this.codePdt = codePdt;
		this.qteCmd = qteCmd;
		this.dateCmd = dateCmd;
	}
	public commandes() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
