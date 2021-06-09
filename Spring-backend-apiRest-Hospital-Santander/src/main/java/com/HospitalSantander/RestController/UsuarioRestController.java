package com.HospitalSantander.RestController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.HospitalSantander.Domain.service.UsuarioService;
import com.HospitalSantander.Persistence.entity.Usuario;

@RestController
@RequestMapping("/apiuser")
public class UsuarioRestController {
	
	@Autowired
	private UsuarioService service;
	
	@GetMapping("/user/{alias}")
	public Usuario getByAlias(@PathVariable("alias") String alias) {
	return service.getByAlias(alias);	
	}
	
	@GetMapping("/users")
	public List<Usuario> getAll(){
		return service.getAll();
	}
	
}
