package com.HospitalSantander.Domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HospitalSantander.Domain.repository.AgendaRepository;
import com.HospitalSantander.Persistence.entity.Agenda;
import com.HospitalSantander.Persistence.entity.Agenda_medico;
import com.HospitalSantander.Persistence.entity.Usuario;

@Service
public class AgendaService {
	
	@Autowired
	private AgendaRepository agendaRepository;
	
	public List<Agenda> getAll(){
		return (List<Agenda>)  agendaRepository.findAll();
		
	}
	public Agenda getByIdAngenda(int id){
		return agendaRepository.getByIdAgenda(id);
	}
}
