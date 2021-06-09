package com.HospitalSantander.Persistence.entity.pk;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class DetalleagendaPK implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "cod_horario")
	private Integer id_horario;
	@Column(name = "cod_agenda")
	private Integer id_agenda;
}
