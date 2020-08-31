package com.alfonso.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.alfonso.model.Pelicula;

@Repository //Anotacion que indica que es una interface repositorio
public interface PeliculaRepository extends JpaRepository<Pelicula, Integer> {
	
}
