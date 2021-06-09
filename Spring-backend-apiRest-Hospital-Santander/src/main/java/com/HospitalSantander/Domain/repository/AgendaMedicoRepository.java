package com.HospitalSantander.Domain.repository;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HospitalSantander.Persistence.crud.AgendaMedicoCrudRepository;
import com.HospitalSantander.Persistence.entity.Agenda_medico;
import com.HospitalSantander.Persistence.entity.Medico;

@Repository
public class AgendaMedicoRepository {
	
	

	@Autowired
	private AgendaMedicoCrudRepository agendaMedicoCrudRepository;
	
	public List<Agenda_medico> findAll(){
		return (List<Agenda_medico>)  agendaMedicoCrudRepository.findAll();
	}
	
	public Agenda_medico getByIdMedico(int id) {
		return  agendaMedicoCrudRepository.findByIdMedico(id);
	}



}
