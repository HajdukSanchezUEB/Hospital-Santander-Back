package com.HospitalSantander.Persistence.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import com.HospitalSantander.Persistence.entity.pk.AgendamedicoPK;
import com.fasterxml.jackson.core.SerializableString;

@Entity
@Table(name = "agenda_medico")
public class Agenda_medico implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@EmbeddedId
	private AgendamedicoPK id;
//	
//	@MapsId("medico")
//	@ManyToOne(fetch=FetchType.LAZY)
//    @JoinColumn(name = "cod_medico", updatable = false, nullable = false)
//	@Column(name = "cod_medico")
//	private Medico medico;

	
	//	@Column(name = "cod_agenda")
//	private Agenda id_agenda;
	
	public AgendamedicoPK getId() {
		return id;
	}

	public void setId(AgendamedicoPK id) {
		this.id = id;
	}


		
}
