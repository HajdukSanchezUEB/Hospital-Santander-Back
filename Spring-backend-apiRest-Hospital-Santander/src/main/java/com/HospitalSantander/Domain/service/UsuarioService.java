package com.HospitalSantander.Domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HospitalSantander.Domain.repository.UsuarioRepository;
import com.HospitalSantander.Persistence.entity.Usuario;

@Service
public class UsuarioService {
	
	@Autowired
	private UsuarioRepository repository;
	
	public List<Usuario> getAll(){
		return repository.getAll();
	}
	
	public Usuario getByAlias(String alias){
		return repository.getByAlias(alias);
	}
}
