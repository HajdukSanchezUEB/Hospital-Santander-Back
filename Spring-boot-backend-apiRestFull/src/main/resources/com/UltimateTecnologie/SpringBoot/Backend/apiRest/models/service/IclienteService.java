package com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.entity.Cliente;
import com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.entity.Region;


public interface IclienteService {
	
	public List<Cliente> findAll();
	
	public Page<Cliente> findAll(Pageable pageable);
	
	public Cliente save(Cliente clientes);
	
	public void delete(Long id);
	
	public Cliente findById(Long id);
	
	public List<Region> findAllRegiones();
}
