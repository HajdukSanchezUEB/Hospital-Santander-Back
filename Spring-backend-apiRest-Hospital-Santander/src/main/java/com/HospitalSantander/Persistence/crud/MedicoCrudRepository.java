package com.HospitalSantander.Persistence.crud;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.HospitalSantander.Persistence.entity.Medico;

public interface MedicoCrudRepository extends CrudRepository<Medico,Integer>{
	
	@Query(value = "SELECT * FROM medico WHERE cod_usuario = ?",nativeQuery = true)
	Medico getById(int id);
}
