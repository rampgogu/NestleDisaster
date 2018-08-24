package com.project.callforcode.app.persistence.models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class WeatherDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	private String msg_type;
	private String office_cd;
	private String office_name;
	private String event_desc;
	private String severity_cd;
	private String severity;
	private String response_type;
	private String urgency;
	private Date effective_dt_tm_local;
	private String effective_dt_tm_tz_abbrv;
	private double latitude;
	private double longitude;
	private String area_cd;
	private String area_name;
	private String headline_text;
	private String st_name;
	private String st_cd;
	private int total_popultion;
	private int SSmale;
	private int SSFemale;
	private int ZIPCODE;
	private int KidsMale;
	private int KidsFemale; 
	private int AdultsMale;
	private int AdultsFemale;
	
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	
	public String getMsg_type() {
		return msg_type;
	}
	public void setMsg_type(String msg_type) {
		this.msg_type = msg_type;
	}
	public String getOffice_cd() {
		return office_cd;
	}
	public void setOffice_cd(String office_cd) {
		this.office_cd = office_cd;
	}
	public String getOffice_name() {
		return office_name;
	}
	public void setOffice_name(String office_name) {
		this.office_name = office_name;
	}
	public String getEvent_desc() {
		return event_desc;
	}
	public void setEvent_desc(String event_desc) {
		this.event_desc = event_desc;
	}
	public String getSeverity_cd() {
		return severity_cd;
	}
	public void setSeverity_cd(String severity_cd) {
		this.severity_cd = severity_cd;
	}
	public String getSeverity() {
		return severity;
	}
	public void setSeverity(String severity) {
		this.severity = severity;
	}
	public String getResponse_type() {
		return response_type;
	}
	public void setResponse_type(String response_type) {
		this.response_type = response_type;
	}
	public String getUrgency() {
		return urgency;
	}
	public void setUrgency(String urgency) {
		this.urgency = urgency;
	}
	public Date getEffective_dt_tm_local() {
		return effective_dt_tm_local;
	}
	public void setEffective_dt_tm_local(Date effective_dt_tm_local) {
		this.effective_dt_tm_local = effective_dt_tm_local;
	}
	public String getEffective_dt_tm_tz_abbrv() {
		return effective_dt_tm_tz_abbrv;
	}
	public void setEffective_dt_tm_tz_abbrv(String effective_dt_tm_tz_abbrv) {
		this.effective_dt_tm_tz_abbrv = effective_dt_tm_tz_abbrv;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public String getArea_cd() {
		return area_cd;
	}
	public void setArea_cd(String area_cd) {
		this.area_cd = area_cd;
	}
	public String getArea_name() {
		return area_name;
	}
	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}
	public String getHeadline_text() {
		return headline_text;
	}
	public void setHeadline_text(String headline_text) {
		this.headline_text = headline_text;
	}
	public String getSt_name() {
		return st_name;
	}
	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}
	public String getSt_cd() {
		return st_cd;
	}
	public void setSt_cd(String st_cd) {
		this.st_cd = st_cd;
	}
	public int getTotal_popultion() {
		return total_popultion;
	}
	public void setTotal_popultion(int total_popultion) {
		this.total_popultion = total_popultion;
	}
	public int getSSmale() {
		return SSmale;
	}
	public void setSSmale(int sSmale) {
		SSmale = sSmale;
	}
	public int getSSFemale() {
		return SSFemale;
	}
	public void setSSFemale(int sSFemale) {
		SSFemale = sSFemale;
	}
	public int getZIPCODE() {
		return ZIPCODE;
	}
	public void setZIPCODE(int zIPCODE) {
		ZIPCODE = zIPCODE;
	}
	public int getKidsMale() {
		return KidsMale;
	}
	public void setKidsMale(int kidsMale) {
		KidsMale = kidsMale;
	}
	public int getKidsFemale() {
		return KidsFemale;
	}
	public void setKidsFemale(int kidsFemale) {
		KidsFemale = kidsFemale;
	}
	public int getAdultsMale() {
		return AdultsMale;
	}
	public void setAdultsMale(int adultsMale) {
		AdultsMale = adultsMale;
	}
	public int getAdultsFemale() {
		return AdultsFemale;
	}
	public void setAdultsFemale(int adultsFemale) {
		AdultsFemale = adultsFemale;
	}
	
	
	

}
