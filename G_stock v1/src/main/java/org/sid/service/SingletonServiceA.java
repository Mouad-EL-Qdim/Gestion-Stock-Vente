package org.sid.service;

import org.sid.dao.ApprovisionnementDAOImpl;

public class SingletonServiceA {
	private static ApprovisionnementServiceImpl metier;
	static {
	ApprovisionnementDAOImpl daoa = new ApprovisionnementDAOImpl();
	
	metier = new ApprovisionnementServiceImpl();
	metier.setDaoa(daoa);
	}
	public static ApprovisionnementServiceImpl getService() {
		return metier;
	}
}
