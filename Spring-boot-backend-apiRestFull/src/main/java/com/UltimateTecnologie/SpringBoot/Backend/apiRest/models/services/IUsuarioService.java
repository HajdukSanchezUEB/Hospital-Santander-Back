package com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.services;

import com.UltimateTecnologie.SpringBoot.Backend.apiRest.models.entity.Usuario;

public interface IUsuarioService {

	public Usuario findByUsername(String username);
}
