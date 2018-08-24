package com.project.callforcode.app.service;

import java.util.Map;

public interface DataService {
	
	Map<String, String> getNGONames();

	Map<String, String> getAddresses();

	Map<String, String> getEmails();
	
	Map<String, String> getContact_Nos();

}
