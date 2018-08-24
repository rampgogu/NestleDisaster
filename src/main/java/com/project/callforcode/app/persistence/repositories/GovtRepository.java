package com.project.callforcode.app.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.callforcode.app.persistence.models.GovernmentRegistration;

public interface GovtRepository extends JpaRepository<GovernmentRegistration, Long>{

}
