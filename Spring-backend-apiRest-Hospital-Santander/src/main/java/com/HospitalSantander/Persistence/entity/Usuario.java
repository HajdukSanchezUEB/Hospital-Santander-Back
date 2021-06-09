package com.HospitalSantander.Persistence.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="usuario")
public class Usuario implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
 	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cod_usuario")
	private long id;
 	
 	@NotEmpty(message = "No puede estar vacio")
 	@Size(min = 4, max = 12, message = "El mesaje tiene que estar entre 4 y 12")
 	@Column(name="nom_usuario", nullable = false)
 	private String nombres;
 	
 	@NotEmpty(message = "No puede estar vacio")
 	@Size(min = 4, max = 12, message = "El mesaje tiene que estar entre 4 y 12")
 	@Column(name="apellido_usuario",nullable = false)
 	private String apellidos;
 	
 	@NotEmpty(message = "No puede estar vacio")
 	@Column(name="alias_usuario",nullable = false)
 	private String alias;

 	@NotEmpty(message = "No puede estar vacio")
 	@Column(name="clave_usuario",nullable = false)
 	private String password;

	 
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
 	
 	
}
