package org.sid.service;

import java.util.List;
import org.sid.entities.produits_stock;

public interface ICatalogueService {

	public void addProduit(produits_stock p);
	public List<produits_stock> listsProduits();	
	public produits_stock getProduits (int codePdt);
	public void deleteProduit(int codePdt);
	public void updateProduit(produits_stock p);
}