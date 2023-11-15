package org.sid.dao;

import java.util.List;

import org.sid.entities.commandes;
import org.sid.entities.produits_approvisionnement;
import org.sid.entities.produits_stock;
import org.sid.entities.users;

public interface  ICatalogueDAO {
	public void addProduit(produits_stock p);
	public List<produits_stock> listsProduits();	
	public produits_stock getProduits (int codePdt);
	public void deleteProduit(int codePdt);
	public void updateProduit(produits_stock p);	
	public void addUser(users u);
	public List<users> listsUsers();
	public void updateUser(users u);
	public int addUsers(users u);
	public users getUser (int codeUser);
	public void deleteUser(int codeUser);
	public void addCommande(commandes c);
	public List<commandes> listsCommandes();	
	public commandes getCommande (int codeCmd);
	public void deleteCommande(int codeCmd);
	public void updateCommande(commandes c);
	public void addApprovisionnement(produits_approvisionnement a);
	public List<produits_approvisionnement> listsApprovisionnements();	
	public produits_approvisionnement getApprovisionnement (int codePdt);
	public void deleteApprovisionnement(int codePdt);
	public void updateApprovisionnement(produits_approvisionnement a);

}
