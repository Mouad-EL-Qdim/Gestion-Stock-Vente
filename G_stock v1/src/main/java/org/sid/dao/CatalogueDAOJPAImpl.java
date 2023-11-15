package org.sid.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.sid.entities.produits_stock;

public class CatalogueDAOJPAImpl implements ICatalogueDAO{
	@PersistenceContext
	private EntityManager em;
	@Override
	public void addProduit(produits_stock p) {
		em.persist(p);	
	}

	@Override
	public List<produits_stock> listsProduits() {
		Query req=em.createQuery("SELECT p from produits_stock p");
		return req.getResultList();
	}

	@Override
	public produits_stock getProduits(int codePdt) {		
		return em.find(produits_stock.class, codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		produits_stock p=getProduits(codePdt);
		em.remove(p);		
	}

	@Override
	public void updateProduit(produits_stock p) {
		em.merge(p);		
	}

}