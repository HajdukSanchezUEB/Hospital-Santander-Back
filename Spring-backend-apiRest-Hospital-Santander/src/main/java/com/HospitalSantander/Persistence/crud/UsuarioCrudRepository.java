package com.HospitalSantander.Persistence.crud;


import org.springframework.data.repository.CrudRepository;

import com.HospitalSantander.Persistence.entity.Usuario;

public interface UsuarioCrudRepository extends CrudRepository<Usuario, Integer>{

	Usuario findByAlias(String alias);

}
