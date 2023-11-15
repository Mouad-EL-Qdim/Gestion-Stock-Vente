package org.sid.dao;

import java.util.List;
import org.sid.entities.produits_approvisionnement;

public interface IApprovisionnementDAO {
	public void addProduit(produits_approvisionnement p);
	public List<produits_approvisionnement> listsProduits();	
	public produits_approvisionnement getProduits (int codePdt);
	public void deleteProduit(int codePdt);
	public void updateProduit(produits_approvisionnement p);
}