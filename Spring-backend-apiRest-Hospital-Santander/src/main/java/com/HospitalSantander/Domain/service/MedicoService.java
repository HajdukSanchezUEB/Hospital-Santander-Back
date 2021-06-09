package com.HospitalSantander.Domain.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HospitalSantander.Domain.repository.MedicoRepository;
import com.HospitalSantander.Persistence.entity.Medico;

@Service
public class MedicoService {
	
	@Autowired
	private MedicoRepository repository;
	
	public List<Medico> getAll(){
		return repository.getAll();
	}
	public Medico getById(int id){
		return repository.getById(id);
	}

}
