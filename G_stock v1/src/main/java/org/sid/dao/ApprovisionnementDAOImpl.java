package org.sid.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.sid.entities.produits_approvisionnement;
import org.sid.entities.produits_stock;

public class ApprovisionnementDAOImpl implements IApprovisionnementDAO {
	private Map<Integer, produits_approvisionnement> produits = new HashMap<Integer, produits_approvisionnement>();

	@Override
	public void addProduit(produits_approvisionnement p) {
		produits.put(p.getCodePdt(), p);	
	}

	@Override
	public List<produits_approvisionnement> listsProduits() {
		return new ArrayList<produits_approvisionnement>(produits.values());
	}

	@Override
	public produits_approvisionnement getProduits(int codePdt) {
		return produits.get(codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		produits.remove(codePdt);
		
	}

	@Override
	public void updateProduit(produits_approvisionnement p) {
		produits.put(p.getCodePdt(), p);
		
	}
	


}