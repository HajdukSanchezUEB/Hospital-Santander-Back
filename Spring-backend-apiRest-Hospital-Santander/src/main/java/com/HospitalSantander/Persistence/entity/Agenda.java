package com.HospitalSantander.Persistence.entity;

import java.io.Serializable;
import java.time.LocalDate;
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

@Entity
@Table(name ="agenda")
public class Agenda implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cod_agenda",nullable = false)
	private long id;
	
	@Column(name = "fecha_agenda",nullable = false)
	private LocalDate fecha;
	
	@JoinTable(name = "detalle_agenda", joinColumns = @JoinColumn(name = "cod_agenda"), inverseJoinColumns = @JoinColumn(name = "cod_horario"), uniqueConstraints = {
			@UniqueConstraint(columnNames = { "cod_agenda", "cod_horario" }) })
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Horario> horario;

	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public LocalDate getFecha() {
		return fecha;
	}

	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}

	public List<Horario> getHorario() {
		return horario;
	}

	public void setHorario(List<Horario> horario) {
		this.horario = horario;
	}
	
}


