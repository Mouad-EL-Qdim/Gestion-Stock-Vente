package org.sid.entities;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class produits_approvisionnement {
	@Id
	private int codePdt;
	private int qteCommande;
	private Date datePrevueLivraison;
	public int getCodePdt() {
		return codePdt;
	}
	public void setCodePdt(int codePdt) {
		this.codePdt = codePdt;
	}
	public int getQteCommande() {
		return qteCommande;
	}
	public void setQteCommande(int qteCommande) {
		this.qteCommande = qteCommande;
	}
	public Date getDatePrevueLivraison() {
		return datePrevueLivraison;
	}
	public void setDatePrevueLivraison(Date datePrevueLivraison) {
		this.datePrevueLivraison = datePrevueLivraison;
	}
	public produits_approvisionnement(int codePdt, int qteCommande, Date datePrevueLivraison) {
		super();
		this.codePdt = codePdt;
		this.qteCommande = qteCommande;
		this.datePrevueLivraison = datePrevueLivraison;
	}
	public produits_approvisionnement() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
