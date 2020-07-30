package com.mx.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mx.dao.EquipoDao;
import com.mx.model.Equipo;

@Service
public class EquipoService {

	@Autowired
	private EquipoDao equipoDao;
	
	public boolean save(Equipo equipo){		
		System.out.println("service: "+ equipo.toString());	
		return equipoDao.save(equipo);
	}

}
