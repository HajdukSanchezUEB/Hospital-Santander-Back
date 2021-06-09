package com.HospitalSantander.Domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HospitalSantander.Domain.repository.AgendaMedicoRepository;
import com.HospitalSantander.Persistence.entity.Agenda_medico;
import com.HospitalSantander.Persistence.entity.Medico;

@Service
public class AgendaMedicoService {
	
	@Autowired
	private AgendaMedicoRepository agendaMedicoRepository;
	
	public List<Agenda_medico> getAll(){
		return (List<Agenda_medico>)  agendaMedicoRepository.findAll();
		
	}
	public Agenda_medico getByIdMedico(int id){
		return agendaMedicoRepository.getByIdMedico(id);
	}

}
