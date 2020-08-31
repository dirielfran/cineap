package com.alfonso.service.JPA;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alfonso.interfaces.IPerfilesService;
import com.alfonso.model.Perfil;
import com.alfonso.repository.PerfilesRepository;

@Service
public class PerfilesServiceJPA implements IPerfilesService{

	@Autowired
	PerfilesRepository perfilesRepo;
	
	@Override
	public void guardar(Perfil perfil) {
		// TODO Auto-generated method stub
		perfilesRepo.save(perfil);
	}

}
