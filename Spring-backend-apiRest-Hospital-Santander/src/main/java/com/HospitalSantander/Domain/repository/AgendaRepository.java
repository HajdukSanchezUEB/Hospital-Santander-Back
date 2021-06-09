package com.HospitalSantander.Domain.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HospitalSantander.Persistence.crud.AgendaCrudRespository;
import com.HospitalSantander.Persistence.entity.Agenda;
import com.HospitalSantander.Persistence.entity.Agenda_medico;

@Repository
public class AgendaRepository {
	
	@Autowired
	private AgendaCrudRespository agendaCrudRepository;
	
	public List<Agenda> findAll(){
		return (List<Agenda>)  agendaCrudRepository.findAll();
		
	}
	public Agenda getByIdAgenda(int id) {
		return  agendaCrudRepository.findByIdAgenda(id);
	}


}
