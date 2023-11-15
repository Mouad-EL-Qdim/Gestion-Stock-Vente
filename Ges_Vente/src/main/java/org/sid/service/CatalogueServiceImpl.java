package org.sid.service;

import java.util.List;

import org.sid.dao.ICatalogueDAO;
import org.sid.entities.commandes;
import org.sid.entities.produits_approvisionnement;
import org.sid.entities.produits_stock;
import org.sid.entities.users;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class CatalogueServiceImpl implements ICatalogueService{

private ICatalogueDAO dao;
	
	public void setDao(ICatalogueDAO dao) {
		this.dao = dao;
	}

	@Override
	public void addProduit(produits_stock p) {
		
		dao.addProduit(p);
	}

	@Override
	public List<produits_stock> listsProduits() {
		
		return dao.listsProduits();
	}

	@Override
	public produits_stock getProduits(int codePdt) {
		// TODO Auto-generated method stub
		return dao.getProduits(codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		// TODO Auto-generated method stub
		dao.deleteProduit(codePdt);
	}

	@Override
	public void updateProduit(produits_stock p) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<users> listsUsers() {
		// TODO Auto-generated method stub
		return dao.listsUsers();
	}

	@Override
	public void addUser(users u) {
		// TODO Auto-generated method stub
		dao.addUser(u);
	}

	@Override
	public void updateUser(users u) {
		// TODO Auto-generated method stub
		dao.updateUser(u);
	}

	@Override
	public users getUser(int codeUser) {
		return dao.getUser(codeUser);
	}

	@Override
	public void deleteUser(int codeUser) {
		dao.deleteUser(codeUser);	
		
	}

	@Override
	public void addCommande(commandes c) {
		dao.addCommande(c);
		
	}

	@Override
	public List<commandes> listsCommandes() {
		
		return dao.listsCommandes();
	}

	@Override
	public commandes getCommande(int codeCmd) {
		
		return dao.getCommande(codeCmd);
	}

	@Override
	public void deleteCommande(int codeCmd) {
		dao.deleteCommande(codeCmd);
		
	}

	@Override
	public void updateCommande(commandes c) {
		dao.updateCommande(c);
		
	}

	@Override
	public void addApprovisionnement(produits_approvisionnement a) {
		dao.addApprovisionnement(a);
		
	}

	@Override
	public List<produits_approvisionnement> listsApprovisionnements() {
		
		return dao.listsApprovisionnements();
	}

	@Override
	public produits_approvisionnement getApprovisionnement(int codePdt) {
		
		return dao.getApprovisionnement(codePdt);
	}

	@Override
	public void deleteApprovisionnement(int codePdt) {
		dao.deleteApprovisionnement(codePdt);
		
	}

	@Override
	public void updateApprovisionnement(produits_approvisionnement a) {
		dao.updateApprovisionnement(a);
		
	}

}
