package com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.entity.Cliente;
import com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.entity.Region;


public interface IClienteDao extends JpaRepository<Cliente, Long>{

	@Query("from Region")
	public List<Region> findAllRegiones();
}
