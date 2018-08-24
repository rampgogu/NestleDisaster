package com.project.callforcode.app.persistence.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
public class GovernmentRegistration {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@NotBlank
	//@Size(min = 1, max = 10)
	private String GovernmentStateName;

	private String Password;
	
	private String Office_Address;
	
	private long contact_No;
	
	private String email;
	
	private String SPOC;
	

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getGovernmentStateName() {
		return GovernmentStateName;
	}

	public void setGovernmentStateName(String governmentStateName) {
		GovernmentStateName = governmentStateName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	
	public String getOffice_Address() {
		return Office_Address;
	}

	public void setOffice_Address(String office_Address) {
		Office_Address = office_Address;
	}

	public long getContact_No() {
		return contact_No;
	}

	public void setContact_No(long contact_No) {
		this.contact_No = contact_No;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSPOC() {
		return SPOC;
	}

	public void setSPOC(String sPOC) {
		SPOC = sPOC;
	}


}
