package org.sid.service;

import java.util.List;

import org.sid.dao.IApprovisionnementDAO;
import org.sid.entities.produits_approvisionnement;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class ApprovisionnementServiceImpl implements IApprovisionnementService{

	private IApprovisionnementDAO daoa;

	public void setDaoa(IApprovisionnementDAO daoa) {
		this.daoa = daoa;
	}

	@Override
	public void addProduit(produits_approvisionnement p) {
		daoa.addProduit(p);		
	}

	@Override
	public List<produits_approvisionnement> listsProduits() {
		return daoa.listsProduits();
	}

	@Override
	public produits_approvisionnement getProduits(int codePdt) {
		return daoa.getProduits(codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		daoa.deleteProduit(codePdt);		
	}

	@Override
	public void updateProduit(produits_approvisionnement p) {
		daoa.updateProduit(p);		
	}

}