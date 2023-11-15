package org.sid.web;

import java.util.List;
import org.sid.entities.users;
import org.sid.entities.commandes;
import org.sid.entities.produits_prix;
import org.sid.entities.produits_stock;
import org.sid.service.ICatalogueService;
import org.sid.service.SingletonService;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import com.opensymphony.xwork2.ActionSupport;
@Component
public class ProduitAction extends ActionSupport{
	public produits_stock produit= new produits_stock();
	public int codeUser; public String login; public String pass;
	public users user=new users();
	public List<produits_stock> produits;
	public List<users> users;
	public commandes commande =new commandes();
	public List<commandes> commandes;
	public int code;
	public int codeU;
	
	@Autowired
	private ICatalogueService service= SingletonService.getService();
	
	public String indexH() {
		users=service.listsUsers();
		return SUCCESS;
	}
	
	public String indexP() {
		users=service.listsUsers();
		return SUCCESS;
	}
	
	public String New() {
		
		return SUCCESS;
	}
	
		public String cos() {
			produits=service.listsProduits();
			
			commandes=service.listsCommandes();
		return SUCCESS;
	}
	
	public String loginPass() {
		
		return SUCCESS;
	}
	
	public String addUser(){
		 
		service.addUser(user);
		return SUCCESS;
		
	}

	public String index() {
		
		produits=service.listsProduits();
		users=service.listsUsers();
		return SUCCESS;
	}

	public String comande() {
		
		produit=service.getProduits(code);
		produits=service.listsProduits();
		return SUCCESS;
	}
	
	
	public String acmd() {
		
		service.addCommande(commande);
		commandes=service.listsCommandes();
		
		return SUCCESS;
	}
	
	public String indexCmd() {
		
		
		commandes=service.listsCommandes();
		return SUCCESS;
	}
	
	public String facture() {

		service.addCommande(commande);
		commandes=service.listsCommandes();
		return SUCCESS;
	}
	
	
	
	
	private String username;
	private String password;
 
	
 
	public String getUsername() {
		return username;
	}
 
	public void setUsername(String username) {
		this.username = username;
	}
 
	public String getPassword() {
		return password;
	}
 
	public void setPassword(String password) {
		this.password = password;
	}

}