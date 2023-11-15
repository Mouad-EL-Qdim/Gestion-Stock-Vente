package org.sid.web;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.List;
import org.sid.entities.produits_stock;
import org.sid.service.ICatalogueService;
import org.sid.service.SingletonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import com.opensymphony.xwork2.ActionSupport;


public class ProduitAction extends ActionSupport{
	 final ModelAndView model = new ModelAndView();
	public produits_stock produit=new produits_stock();
	public List<produits_stock> produits;
	public int code;
	public boolean Mode=false;
	@Autowired
	private ICatalogueService service=SingletonService.getService();
	
	public String index() {
		produits=service.listsProduits();
		return SUCCESS;
	}
	
	public String pdf() {
		
		return SUCCESS;
	}
	
public String pdfa() {
		
		return SUCCESS;
	}
	public String save() {
		if(Mode==false) 
		service.addProduit(produit);
		else
		service.updateProduit(produit);
		produits=service.listsProduits();
		return SUCCESS;
	}
	public String delete() {
		service.deleteProduit(code);
		produits=service.listsProduits();
		return SUCCESS;
	}
	public String edit() {
		Mode=true;
		produit=service.getProduits(code);
		produits=service.listsProduits();
		return SUCCESS;
	}
	

	
}