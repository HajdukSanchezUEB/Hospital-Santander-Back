package com.HospitalSantander.Domain.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HospitalSantander.Persistence.crud.MedicoCrudRepository;
import com.HospitalSantander.Persistence.entity.Medico;

@Repository
public class MedicoRepository {
	
	@Autowired
	private MedicoCrudRepository medicoCrudRepository;
	
	public List<Medico> getAll(){
		return (List<Medico>)  medicoCrudRepository.findAll();
		
	}
	
	public Medico getById(int id) {
		return  medicoCrudRepository.getById(id);
	}

}
