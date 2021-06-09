package com.HospitalSantander.Persistence.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

import com.HospitalSantander.Persistence.entity.pk.DetalleagendaPK;

@Entity(name = "detalle_agenda")
public class Detalle_agenda {
	
	@EmbeddedId
	private DetalleagendaPK id;

	public DetalleagendaPK getId() {
		return id;
	}

	public void setId(DetalleagendaPK id) {
		this.id = id;
	}
	
	
	
}
