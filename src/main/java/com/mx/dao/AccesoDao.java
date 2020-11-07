package com.mx.dao;

import java.util.List;

import com.mx.model.Credencial;

public interface AccesoDao {

	public boolean save(Credencial credencial);
	public List<Credencial> findAll();
	public boolean delete(Credencial credencial);

}
