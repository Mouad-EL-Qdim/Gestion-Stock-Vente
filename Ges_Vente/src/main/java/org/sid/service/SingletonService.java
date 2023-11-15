package org.sid.service;

import org.sid.dao.CatalogueDAOImpl;
import org.springframework.transaction.annotation.Transactional;
@Transactional
public class SingletonService {
	private static CatalogueServiceImpl service;
	static {
		CatalogueDAOImpl dao = new CatalogueDAOImpl();
		
		service = new CatalogueServiceImpl();
		service.setDao(dao);
	}
	public static CatalogueServiceImpl getService() {
		return service;
	}
}