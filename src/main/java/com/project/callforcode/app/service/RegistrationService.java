package com.project.callforcode.app.service;

import java.util.List;

import com.project.callforcode.app.persistence.models.GovernmentRegistration;
import com.project.callforcode.app.persistence.models.Registration;

public interface RegistrationService {
	
	boolean saveNGO(Registration registration);
	public int newSaveNGO(Registration registration) ;
	public List<Registration> listNGO();
	boolean saveGovt(GovernmentRegistration govtRegistration);
	public int newsaveGovt(GovernmentRegistration govtRegistration) ;
	List<GovernmentRegistration> listGovt();
	List<Registration> listNGOByService1(String Service1);
	List<Registration> listNGOByService2(String Service2);
	List<Registration> listNGOByService3(String Service3);
	

}
