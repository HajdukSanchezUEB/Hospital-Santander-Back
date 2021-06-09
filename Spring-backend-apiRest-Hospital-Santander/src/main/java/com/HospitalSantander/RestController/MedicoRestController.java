package com.HospitalSantander.RestController;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.HospitalSantander.Domain.service.MedicoService;
import com.HospitalSantander.Persistence.entity.Medico;
import com.HospitalSantander.Persistence.entity.Usuario;

@RestController
@RequestMapping("/apimedico")
public class MedicoRestController {

	@Autowired
	private MedicoService medicoService;
	
	@GetMapping("/medicos")
	public List<Medico> getAll(){
		return medicoService.getAll();
	}
	@GetMapping("/medico/{id}")
	public Medico getByAlias(@PathVariable("id") int id) {
	return medicoService.getById(id);	
	}

}
