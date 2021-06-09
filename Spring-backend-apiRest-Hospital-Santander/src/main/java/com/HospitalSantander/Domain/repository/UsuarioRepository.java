package com.HospitalSantander.Domain.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HospitalSantander.Persistence.crud.UsuarioCrudRepository;
import com.HospitalSantander.Persistence.entity.Usuario;

@Repository
public class UsuarioRepository {
	
	@Autowired
	private UsuarioCrudRepository usuarioRepository;
	
	public List<Usuario> getAll(){
		return (List<Usuario>)  usuarioRepository.findAll();
		
	}
	
	public Usuario getByAlias(String alias){
		return (Usuario)  usuarioRepository.findByAlias(alias);
		
	}
	
	
}
