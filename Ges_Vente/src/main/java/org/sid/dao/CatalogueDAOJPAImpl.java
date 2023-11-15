package org.sid.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.sid.entities.commandes;
import org.sid.entities.produits_approvisionnement;
import org.sid.entities.produits_stock;
import org.sid.entities.users;

public class CatalogueDAOJPAImpl implements ICatalogueDAO{
	@PersistenceContext
	private EntityManager em;
	@Override
	public void addProduit(produits_stock p) {
		// TODO Auto-generated method stub
		em.persist(p);
	}

	@Override
	public List<produits_stock> listsProduits() {
		// TODO Auto-generated method stub
		Query req=em.createQuery("SELECT p from produits_stock p");
		return req.getResultList();
		
	}

	@Override
	public produits_stock getProduits(int codePdt) {
		// TODO Auto-generated method stub
		return em.find(produits_stock.class, codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		// TODO Auto-generated method stub
		produits_stock p=getProduits(codePdt);
		em.remove(p);
	}

	@Override
	public void updateProduit(produits_stock p) {
		// TODO Auto-generated method stub
		em.merge(p);
	}

	@Override
	public List<users> listsUsers() {
		// TODO Auto-generated method stub
	    Query req=em.createQuery("SELECT u from users u");
		return req.getResultList();
	}

	@Override
	public void addUser(users u) {
		// TODO Auto-generated method stub
		em.persist(u);	
	}

	@Override
	public void updateUser(users u) {
		// TODO Auto-generated method stub
		em.merge(u);
	}

	@Override
	public int addUsers(users u) {
		// TODO Auto-generated method stub
		em.persist(u);
		return u.getCodeUser(); 
	}

	@Override
	public users getUser(int codeUser) {
		// TODO Auto-generated method stub
		return  em.find(users.class, codeUser);
	}

	@Override
	public void deleteUser(int codeUser) {
		// TODO Auto-generated method stub
		users u=getUser(codeUser);
		em.remove(u);
	}

	@Override
	public void addCommande(commandes c) {
		// TODO Auto-generated method stub
		em.persist(c);
	}

	@Override
	public List<commandes> listsCommandes() {
		// TODO Auto-generated method stub
		Query req=em.createQuery("SELECT c from commandes c");
		return req.getResultList();
	}

	@Override
	public commandes getCommande(int codeCmd) {
		// TODO Auto-generated method stub
		return em.find(commandes.class, codeCmd);
	}

	@Override
	public void deleteCommande(int codeCmd) {
		// TODO Auto-generated method stub
		commandes c=getCommande(codeCmd);
		em.remove(c);
	}

	@Override
	public void updateCommande(commandes c) {
		// TODO Auto-generated method stub
		em.merge(c);
	}

	@Override
	public void addApprovisionnement(produits_approvisionnement a) {
		// TODO Auto-generated method stub
		em.persist(a);
	}

	@Override
	public List<produits_approvisionnement> listsApprovisionnements() {
		// TODO Auto-generated method stub
		Query req=em.createQuery("SELECT a from produits_approvisionnement a");
		return req.getResultList();
	}

	@Override
	public produits_approvisionnement getApprovisionnement(int codePdt) {
		// TODO Auto-generated method stub
		return em.find(produits_approvisionnement.class, codePdt);
	}

	@Override
	public void deleteApprovisionnement(int codePdt) {
		// TODO Auto-generated method stub
		produits_approvisionnement a=getApprovisionnement(codePdt);
		em.remove(a);
		
	}

	@Override
	public void updateApprovisionnement(produits_approvisionnement a) {
		// TODO Auto-generated method stub
		em.merge(a);
	}

}
