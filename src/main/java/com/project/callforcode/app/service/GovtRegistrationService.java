package com.project.callforcode.app.service;

import java.util.List;

import com.project.callforcode.app.persistence.models.GovernmentRegistration;

public interface GovtRegistrationService {

	//for Govt
		boolean saveGovt(GovernmentRegistration govtregistration);
		public List<GovernmentRegistration> listGovt();
}
