package com.HospitalSantander.RestController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.HospitalSantander.Domain.service.AgendaService;
import com.HospitalSantander.Persistence.entity.Agenda;
import com.HospitalSantander.Persistence.entity.Agenda_medico;
import com.HospitalSantander.Persistence.entity.Medico;

@RestController
@RequestMapping("agenda")
public class AgendaRestControlller {
	
	@Autowired
	private AgendaService agendaService;
	
	@GetMapping("/medicos")
	public List<Agenda> getAll(){
		return agendaService.getAll();
	}
	@GetMapping("/{id}")
	public Agenda getByAgenda(@PathVariable("id") int id) {
	return agendaService.getByIdAngenda(id);	
	}



}
