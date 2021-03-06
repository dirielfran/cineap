package com.alfonso.interfaces;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.alfonso.model.Usuarios;

public interface IUsuariosService {
	void guardar(Usuarios usuario);
	List<Usuarios> buscarUsuarios();
	Usuarios getUsuario(int id);
	void eliminarUsu(int id);
	Page<Usuarios> getUsuarios(Pageable pagina);
	Usuarios buscarId(Integer id);
} 
