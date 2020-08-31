package com.alfonso.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.alfonso.model.Perfil;

@Repository
public interface PerfilesRepository extends JpaRepository<Perfil, Integer> {

}
