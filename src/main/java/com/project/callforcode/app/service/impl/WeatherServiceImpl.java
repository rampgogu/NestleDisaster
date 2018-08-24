package com.project.callforcode.app.service.impl;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.lang.Object;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.callforcode.app.persistence.models.WeatherDetails;
import com.project.callforcode.app.persistence.repositories.NGORepository;
import com.project.callforcode.app.persistence.repositories.NewsRepository;
import com.project.callforcode.app.service.WeatherService;



@Service
@Transactional
public class WeatherServiceImpl implements WeatherService {
	
	 @Autowired
		private NewsRepository newsRepository;
	 @Autowired
	    private SessionFactory sessionFactory;

	
	@Override
	public boolean saveWeatherdetails(WeatherDetails weatherDetails) {
		ObjectMapper mapper = new ObjectMapper();
		TypeReference<List<WeatherDetails>> mapType = new TypeReference<List<WeatherDetails>>() {};
		InputStream is = TypeReference.class.getResourceAsStream("alert.json");
		try {
			List<WeatherDetails> newsList = mapper.readValue(is, mapType);
			newsRepository.save(newsList);
			System.out.println("Details saved successfully");
			if (newsList != null) {
				return true;
			}
			
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}	
		return false;
	}


	@Override
	public List<WeatherDetails> detailsList() {
		
		return newsRepository.findAll();
	}	
	
	@Override
	public WeatherDetails getDetailsById(int ID){
	        System.out.println("***********");
	        WeatherDetails weatherDetails = null;
	        Session session = null;
	        try {
	            session = sessionFactory.openSession();
	            Query query = session.createQuery("SELECT b FROM WeatherDetails b WHERE b.ID=:ID");
	            query.setParameter("ID", ID);
	            weatherDetails = (WeatherDetails) query.uniqueResult();
	        } catch (Exception ex) {
	            System.out.println("Session Exception: " + ex);
	        } finally {
	            if (session != null && session.isOpen()) {
	                session.close();
	            }
	        }
	        return weatherDetails;
	    } 
		
	}
	


