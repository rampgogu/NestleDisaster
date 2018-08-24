package com.project.callforcode.app.service;

import java.util.List;

import com.project.callforcode.app.persistence.models.WeatherDetails;

public interface WeatherService {

	boolean saveWeatherdetails(WeatherDetails weatherDetails);
	public List<WeatherDetails> detailsList();
	public WeatherDetails getDetailsById(int ID);
}
