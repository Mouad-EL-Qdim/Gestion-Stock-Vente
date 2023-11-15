package org.sid.dao;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.sid.entities.commandes;
import org.sid.entities.produits_approvisionnement;
import org.sid.entities.produits_stock;
import org.sid.entities.users;

public class CatalogueDAOImpl implements ICatalogueDAO{
	private List<produits_stock> produits = new ArrayList<produits_stock>();
	private Map<Integer, users> users = new HashMap<Integer, users>();
	private Map<Integer, produits_approvisionnement> approvisionnements = new HashMap<Integer, produits_approvisionnement>();
	private Map<Integer, commandes> commandes = new HashMap<Integer, commandes>();

	private static final Logger logger = LogManager.getLogger("HelloWorld");	

	@Override
	public void addProduit(produits_stock p) {
		// TODO Auto-generated method stub
		p.setCodePdt(produits.size() + 1);
		produits.add(p);
	}

	@Override
	public List<produits_stock> listsProduits() {
		// TODO Auto-generated method stub
		return produits;
	}

	@Override
	public produits_stock getProduits(int codePdt) {
		// TODO Auto-generated method stub
		return produits.get(codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		// TODO Auto-generated method stub
		produits.remove(getProduits(codePdt));
	}

	@Override
	public void updateProduit(produits_stock p) {
		// TODO Auto-generated method stub
		produits.add(p);
	}

	@Override
	public void addUser(users u) {
		// TODO Auto-generated method stub
		users.put(u.getCodeUser(), u);
	}

	@Override
	public List<users> listsUsers() {
		// TODO Auto-generated method stub
		return new ArrayList<users>(users.values());
	}

	@Override
	public void updateUser(users u) {
		// TODO Auto-generated method stub
		users.put(u.getCodeUser(),u);	
	}

	@Override
	public int addUsers(users u) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public users getUser(int codeUser) {
		// TODO Auto-generated method stub
		return users.get(codeUser);
	}

	@Override
	public void deleteUser(int codeUser) {
		// TODO Auto-generated method stub
		users.remove(codeUser);
	}

	@Override
	public void addCommande(commandes c) {
		// TODO Auto-generated method stub
		commandes.put(c.getCodeCmd(), c);
	}

	@Override
	public List<commandes> listsCommandes() {
		// TODO Auto-generated method stub
		return new ArrayList<commandes>(commandes.values());
	}

	@Override
	public commandes getCommande(int codeCmd) {
		// TODO Auto-generated method stub
		return commandes.get(codeCmd);
	}

	@Override
	public void deleteCommande(int codeCmd) {
		// TODO Auto-generated method stub
		commandes.remove(codeCmd);
	}

	@Override
	public void updateCommande(commandes c) {
		// TODO Auto-generated method stub
		commandes.put(c.getCodeCmd(), c);
	}

	@Override
	public void addApprovisionnement(produits_approvisionnement a) {
		// TODO Auto-generated method stub
		approvisionnements.put(a.getCodePdt(), a);
	}

	@Override
	public List<produits_approvisionnement> listsApprovisionnements() {
		// TODO Auto-generated method stub
		return new ArrayList<produits_approvisionnement>(approvisionnements.values());
	}

	@Override
	public produits_approvisionnement getApprovisionnement(int codePdt) {
		// TODO Auto-generated method stub
		return approvisionnements.get(codePdt);
	}

	@Override
	public void deleteApprovisionnement(int codePdt) {
		// TODO Auto-generated method stub
		approvisionnements.remove(codePdt);
	}

	@Override
	public void updateApprovisionnement(produits_approvisionnement a) {
		// TODO Auto-generated method stub
		approvisionnements.put(a.getCodePdt(), a);
	}

}
