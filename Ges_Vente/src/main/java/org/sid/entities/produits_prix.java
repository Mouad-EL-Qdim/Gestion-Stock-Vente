package org.sid.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class produits_prix implements Serializable {
	@Id
	private int codePdt;
	private String nomPdt;
	private String descPdt;
	private double prixPdt;
	public int getCodePdt() {
		return codePdt;
	}
	public void setCodePdt(int codePdt) {
		this.codePdt = codePdt;
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
	public double getPrixPdt() {
		return prixPdt;
	}
	public void setPrixPdt(double prixPdt) {
		this.prixPdt = prixPdt;
	}
	public produits_prix(int codePdt, String nomPdt, String descPdt, double prixPdt) {
		super();
		this.codePdt = codePdt;
		this.nomPdt = nomPdt;
		this.descPdt = descPdt;
		this.prixPdt = prixPdt;
	}
	public produits_prix() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
