package com.project.callforcode.app.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;


import com.project.callforcode.app.persistence.models.Registration;


public interface NGORepository extends JpaRepository<Registration, Long> {
	
	

}
