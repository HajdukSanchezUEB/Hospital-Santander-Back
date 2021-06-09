package com.HospitalSantander.Persistence.entity;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "horario")
public class Horario implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cod_horario", nullable = false)
	private long id;
	
	@Column(name = "hora_inicio", nullable = false)
		private LocalDateTime horarioInicio;
	
	@Column(name = "hora_fin", nullable = false)
	private LocalDateTime horarioFin;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public LocalDateTime getHorarioInicio() {
		return horarioInicio;
	}

	public void setHorarioInicio(LocalDateTime horarioInicio) {
		this.horarioInicio = horarioInicio;
	}

	public LocalDateTime getHorarioFin() {
		return horarioFin;
	}

	public void setHorarioFin(LocalDateTime horarioFin) {
		this.horarioFin = horarioFin;
	}
	
	
}
