package com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.dao.IclienteDao;
import com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.entity.Cliente;
import com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.entity.Region;

@Service
public class ClienteServiceImpl implements IclienteService{
	@Autowired
	private IclienteDao  clienteDao;

	
	@Override
	@Transactional(readOnly = true)
	public List<Cliente> findAll() {
		return (List<Cliente>) clienteDao.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Page<Cliente> findAll(Pageable pageable) {
		return clienteDao.findAll(pageable);
	}
	
	@Override
	public Cliente save(Cliente cliente) {
		return clienteDao.save(cliente);
	}

	@Override
	public void delete(Long id) {
		clienteDao.deleteById(id);		
	}

	@Override
	public Cliente findById(Long id) {
		return clienteDao.findById(id).orElse(null);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Region> findAllRegiones() {
		return clienteDao.findAllRegiones();
	}
	
	
	
	
	

}
