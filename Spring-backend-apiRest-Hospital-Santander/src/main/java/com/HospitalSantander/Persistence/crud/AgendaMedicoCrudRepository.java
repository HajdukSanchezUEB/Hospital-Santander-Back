package com.HospitalSantander.Persistence.crud;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.HospitalSantander.Persistence.entity.Agenda_medico;

public interface AgendaMedicoCrudRepository extends CrudRepository<Agenda_medico, Integer> {
	
	@Query(value = "SELECT * FROM agenda_medico WHERE cod_medico = ?",nativeQuery = true)
	Agenda_medico findByIdMedico(int id);

}
