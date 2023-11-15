package org.sid.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import org.sid.entities.produits_approvisionnement;
import org.sid.entities.produits_stock;

public class ApprovisionnementDAOJPAImpl implements IApprovisionnementDAO{
	@PersistenceContext
	private EntityManager em;
	@Override
	public void addProduit(produits_approvisionnement p) {
		em.persist(p);	
	}

	@Override
	public List<produits_approvisionnement> listsProduits() {
		Query req=em.createQuery("SELECT p from produits_approvisionnement p");
		return req.getResultList();
	}

	@Override
	public produits_approvisionnement getProduits(int codePdt) {
		return em.find(produits_approvisionnement.class, codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		produits_approvisionnement p=getProduits(codePdt);
		em.remove(p);		
	}

	@Override
	public void updateProduit(produits_approvisionnement p) {
		em.merge(p);	
	}

}