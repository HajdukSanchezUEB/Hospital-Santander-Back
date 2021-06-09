package com.HospitalSantander.Persistence.entity;

import java.io.Serializable;
import java.util.ArrayList;
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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "medico")
public class Medico implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "cod_usuario", nullable = false)
	@JoinColumn(name = "cod_consultorio", insertable = false, updatable = false)
	@Id
	private long id;

	@JoinTable(name = "detalle_especialidad", joinColumns = @JoinColumn(name = "cod_medico"), inverseJoinColumns = @JoinColumn(name = "cod_especialidad"), uniqueConstraints = {
			@UniqueConstraint(columnNames = { "cod_especialidad", "cod_medico" }) })
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Especialidad> especialidades;

	@OneToOne
	@JoinColumn(name = "cod_consultorio", insertable = false, updatable = false)
	private Consultorio consultorioAsignado;

//	@JoinTable(name = "Usuario", 
//	joinColumns = @JoinColumn(name = "cod_usuario"), 
//	inverseJoinColumns = @JoinColumn(name = "cod_medico"),
//	uniqueConstraints = {@UniqueConstraint(columnNames = { "cod_especialidad", "cod_medico" }) })
//	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//	private Usuario usuario;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Consultorio getConsultorioAsignado() {
		return consultorioAsignado;
	}

	public void setConsultorioAsignado(Consultorio consultorioAsignado) {
		this.consultorioAsignado = consultorioAsignado;
	}

	public List<Especialidad> getEspecialidades() {
		return especialidades;
	}

	public void setEspecialidades(List<Especialidad> especialidades) {
		this.especialidades = especialidades;
	}

}
