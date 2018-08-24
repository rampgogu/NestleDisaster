package com.project.callforcode.app.persistence.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
public class Registration {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@NotBlank
	//@Size(min = 1, max = 10)
	private String NGOName;

	private String Password;
	
	private String Services;
	
	private String Service1;
	
	private String Service2;
	
	private String Service3;
	
	private String Office_Address;
	
	private long contact_No;
	
	private String email;
	
	private String SPOC;
	
	private int CAPACITY;

	

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getNGOName() {
		return NGOName;
	}

	public void setNGOName(String nGOName) {
		NGOName = nGOName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getServices() {
		return Services;
	}

	public void setServices(String services) {
		Services = services;
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

	public int getCAPACITY() {
		return CAPACITY;
	}

	public void setCAPACITY(int cAPACITY) {
		CAPACITY = cAPACITY;
	}

	public String getService1() {
		return Service1;
	}

	public void setService1(String service1) {
		Service1 = service1;
	}

	public String getService2() {
		return Service2;
	}

	public void setService2(String service2) {
		Service2 = service2;
	}

	public String getService3() {
		return Service3;
	}

	public void setService3(String service3) {
		Service3 = service3;
	}
	
	

}
