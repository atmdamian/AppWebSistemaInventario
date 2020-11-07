package com.mx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mx.dao.AccesoDao;
import com.mx.model.Credencial;

import jdk.nashorn.internal.runtime.logging.Logger;

@Service
public class AccesoService {

	@Autowired
	private AccesoDao accesoDao;
	
	public boolean save(Credencial credencial) {
		System.out.println(credencial.toString());
		return accesoDao.save(credencial);
	}
	public List<Credencial> findAll(){	
		return accesoDao.findAll();
	}
	
	public boolean delete(Credencial credencial) {
		return accesoDao.delete(credencial);
	}
}
