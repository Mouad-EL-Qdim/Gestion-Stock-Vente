package org.sid.service;

import java.util.List;
import org.sid.dao.ICatalogueDAO;
import org.sid.entities.produits_stock;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class CatalogueServiceImpl implements ICatalogueService {

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
		return dao.getProduits(codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		dao.deleteProduit(codePdt);		
	}

	@Override
	public void updateProduit(produits_stock p) {
		dao.updateProduit(p);		
	}

}