package com.HospitalSantander.Persistence.crud;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.HospitalSantander.Persistence.entity.Agenda;

public interface AgendaCrudRespository extends CrudRepository<Agenda, Integer> {
	

	@Query(value = "SELECT * FROM agenda WHERE cod_agenda = ?",nativeQuery = true)
	Agenda findByIdAgenda(int id);

}
