package org.sid.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class produits_stock {
	@Id
	private int codePdt;
	private int qtePdt;
	private String nomPdt;
	private String descPdt;
	private int prixPdt;
	public produits_stock(int codePdt, int qtePdt, String nomPdt, String descPdt, int prixPdt) {
		super();
		this.codePdt = codePdt;
		this.qtePdt = qtePdt;
		this.nomPdt = nomPdt;
		this.descPdt = descPdt;
		this.prixPdt = prixPdt;
	}
	public int getCodePdt() {
		return codePdt;
	}
	public void setCodePdt(int codePdt) {
		this.codePdt = codePdt;
	}
	public int getQtePdt() {
		return qtePdt;
	}
	public void setQtePdt(int qtePdt) {
		this.qtePdt = qtePdt;
	}
	public String getNomPdt() {
		return nomPdt;
	}
	public void setNomPdt(String nomPdt) {
		this.nomPdt = nomPdt;
	}
	public String getDescPdt() {
		return descPdt;
	}
	public void setDescPdt(String descPdt) {
		this.descPdt = descPdt;
	}
	public int getPrixPdt() {
		return prixPdt;
	}
	public void setPrixPdt(int prixPdt) {
		this.prixPdt = prixPdt;
	}
	public produits_stock() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
