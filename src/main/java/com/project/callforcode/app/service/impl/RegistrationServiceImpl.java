package com.project.callforcode.app.service.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Transaction;

import com.project.callforcode.app.persistence.models.GovernmentRegistration;
import com.project.callforcode.app.persistence.models.Registration;
import com.project.callforcode.app.persistence.models.WeatherDetails;
import com.project.callforcode.app.persistence.repositories.GovtRepository;
import com.project.callforcode.app.persistence.repositories.NGORepository;
import com.project.callforcode.app.service.RegistrationService;

@Service
@Transactional
public class RegistrationServiceImpl implements RegistrationService {

	/*
	 * @Autowired
	 * 
	 * DataSource datasource;
	 * 
	 * @Autowired
	 * 
	 * JdbcTemplate jdbcTemplate;
	 */

	@Autowired
	private NGORepository ngoRepository;
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean saveNGO(Registration registration) {

		Registration savedNGO = ngoRepository.save(registration);
		if (savedNGO != null) {
			return true;
		}

		return false;
	}
	
	@Override
	public int newSaveNGO(Registration registration) {
		int status = 0;
        Session session = null;
        Transaction transaction = null;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            session.saveOrUpdate(registration);
            transaction.commit();
            status = 1;
            System.out.println("Who We Are saved successfully...");
        } catch (Exception ex) {
            System.out.println("Session Exception: " + ex);
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }        
		return status; 
	}

	// for Govt

	@Autowired
	private GovtRepository govtRepository;

	@Override
	public boolean saveGovt(GovernmentRegistration govtRegistration) {

		GovernmentRegistration savedGovt = govtRepository.save(govtRegistration);
		if (savedGovt != null) {
			return true;
		}

		return false;
	}
	
	@Override
	public int newsaveGovt(GovernmentRegistration govtRegistration) {
		int status = 0;
        Session session = null;
        Transaction transaction = null;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            session.saveOrUpdate(govtRegistration);
            transaction.commit();
            status = 1;
            System.out.println("Who We Are saved successfully...");
        } catch (Exception ex) {
            System.out.println("Session Exception: " + ex);
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }        
		return status; 
	}

	@Override
	public List<Registration> listNGO() {

		return ngoRepository.findAll();
	}

	// for Govt

	@Override
	public List<GovernmentRegistration> listGovt() {

		return govtRepository.findAll();
	}
	/*
	 * class UserMapper implements RowMapper<Registration> {
	 * 
	 * public Registration mapRow(ResultSet rs, int arg1) throws SQLException {
	 * 
	 * Registration registration = new Registration();
	 * 
	 * registration.setNGOName(rs.getString("NGOName"));
	 * 
	 * registration.setPassword(rs.getString("password"));
	 * 
	 * registration.setServices(rs.getString("services"));
	 * 
	 * registration.setEmail(rs.getString("email"));
	 * 
	 * registration.setOffice_Address(rs.getString("Office_Address"));
	 * 
	 * registration.setContact_No(rs.getInt("contact_No"));
	 * 
	 * return registration;
	 * 
	 * } }
	 */
	
	@Override
	public List<Registration> listNGOByService1(String Service1) {
		System.out.println("*****Med******");
		List<Registration> registrations = new ArrayList<Registration>();
		Session session = null;
		try {
			session = sessionFactory.openSession();
			Query query = session.createQuery("SELECT a FROM Registration a WHERE a.Service1 = :Service1");
			query.setParameter("Service1", Service1);
			registrations = query.list();
		} catch (Exception ex) {
			System.out.println("Session Exception: " + ex);
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		return registrations ;
	}
	
	@Override
	public List<Registration> listNGOByService2(String Service2) {
		System.out.println("*****Food*****");
		List<Registration> registrations = new ArrayList<Registration>();
		Session session = null;
		try {
			session = sessionFactory.openSession();
			Query query = session.createQuery("SELECT a FROM Registration a WHERE a.Service2 = :Service2");
			query.setParameter("Service2", Service2);
			registrations = query.list();
		} catch (Exception ex) {
			System.out.println("Session Exception: " + ex);
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		return registrations ;
	}

	@Override
	public List<Registration> listNGOByService3(String Service3) {
		System.out.println("*****Clothes******");
		List<Registration> registrations = new ArrayList<Registration>();
		Session session = null;
		try {
			session = sessionFactory.openSession();
			Query query = session.createQuery("SELECT a FROM Registration a WHERE a.Service3 = :Service3");
			query.setParameter("Service3", Service3);
			registrations = query.list();
		} catch (Exception ex) {
			System.out.println("Session Exception: " + ex);
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		return registrations ;
	}

	
}
