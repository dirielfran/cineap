package com.alfonso.interfaces;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.alfonso.model.Banner;

public interface IBannerService {

	void insertar(Banner banner);
	List<Banner> buscarTodos();
	List<Banner> buscarTodasXEst(String estatus);
	Banner buscarPorId(int idBanner);
	void eliminar(int idEliminar);
	Page<Banner> buscarTodas(Pageable page);
}
