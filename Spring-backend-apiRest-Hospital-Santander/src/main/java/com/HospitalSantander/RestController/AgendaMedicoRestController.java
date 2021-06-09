package com.HospitalSantander.RestController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.HospitalSantander.Domain.service.AgendaMedicoService;
import com.HospitalSantander.Persistence.entity.Agenda_medico;
import com.HospitalSantander.Persistence.entity.Medico;

@RestController
@RequestMapping("agendamedico")
public class AgendaMedicoRestController {
	
	@Autowired
	private AgendaMedicoService agendaMedicoService;
	
	@GetMapping("/medicos")
	public List<Agenda_medico> getAll(){
		return agendaMedicoService.getAll();
	}
	
	@GetMapping("/agenda/{id}")
	public Agenda_medico getByIdMedico(@PathVariable("id") int id) {
	return agendaMedicoService.getByIdMedico(id);	
	}


}
