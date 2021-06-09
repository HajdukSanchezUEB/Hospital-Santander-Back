package com.HospitalSantander.Persistence.entity.pk;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;


@Embeddable
public class AgendamedicoPK implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
//	@Column(name = "cod_medico")
//	private Medico id_medico;
//
//	
//	@Column(name = "cod_agenda")
//	private Agenda id_agenda;
//
//
//
//	public Medico getId_medico() {
//		return id_medico;
//	}
//
//	public void setId_medico(Medico id_medico) {
//		this.id_medico = id_medico;
//	}
//
//	public Agenda getId_agenda() {
//		return id_agenda;
//	}
//
//	public void setId_agenda(Agenda id_agenda) {
//		this.id_agenda = id_agenda;
//	}

	@Column(name = "cod_medico")
	private Integer id_medico;
	
	@Column(name = "cod_agenda")
	private Integer id_agenda;
	
	
	
	public Integer getId_medico() {
		return id_medico;
	}
	public void setId_medico(Integer id_medico) {
		this.id_medico = id_medico;
	}
	public Integer getId_agenda() {
		return id_agenda;
	}
	public void setId_agenda(Integer id_agenda) {
		this.id_agenda = id_agenda;
	}

	
	
}
