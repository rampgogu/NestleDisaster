package com.project.callforcode.app.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;


import com.project.callforcode.app.persistence.models.WeatherDetails;

public interface NewsRepository extends JpaRepository<WeatherDetails, Long>{

}
