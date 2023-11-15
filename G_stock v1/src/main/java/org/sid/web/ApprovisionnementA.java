package org.sid.web;

import java.util.List;
import org.sid.entities.produits_approvisionnement;
import org.springframework.beans.factory.annotation.Autowired;
import org.sid.service.SingletonServiceA;
import org.sid.service.IApprovisionnementService;
import com.opensymphony.xwork2.ActionSupport;

public class ApprovisionnementA extends ActionSupport{
	
	public produits_approvisionnement produit = new produits_approvisionnement();
	public List<produits_approvisionnement> produits;
	public int code;
	public boolean Modea=false;
	@Autowired
	private IApprovisionnementService metier= SingletonServiceA.getService();
	public String indexa() {
		produits=metier.listsProduits();
		return SUCCESS;
	}
	public String savea() {
		if(Modea==false) 
		metier.addProduit(produit);
		else
		metier.updateProduit(produit);
		produits=metier.listsProduits();
		return SUCCESS;
	}
	public String deletea() {
		metier.deleteProduit(code);
		produits=metier.listsProduits();
		return SUCCESS;
	}
	public String edita() {	
		Modea=true;
		produit=metier.getProduits(code);
		produits=metier.listsProduits();
		return SUCCESS;
	}

}