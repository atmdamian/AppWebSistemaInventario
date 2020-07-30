package com.mx.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.mx.model.Equipo;

@Component("equipoDao")
public class EquipoDaoImpl implements EquipoDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public boolean save(Equipo equipo) {
		String sql="insert into equipo (nombre, marca, modelo, serie, ubicacion) values (?, ?, ?,?,?)";
		return jdbcTemplate
				.update(sql,
						new Object[] {equipo.getNombre(), equipo.getMarca(),
						equipo.getModelo(), equipo.getSerie(), equipo.getUbicacion()}) == 1;
	}
	
	


}
