package com.mx.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.mx.model.Credencial;

@Component("accesoDao")
public class AccesoDaoImpl implements AccesoDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	
	public boolean save(Credencial credencial) {
		String sql="insert into credencial_acceso (tipo, contrasenia, usuario, hostname, gateway, direccion_ip, mascara_red, servicios) values (?, ?, ?,?,?,?,?,?)";
		return jdbcTemplate
				.update(sql,
						new Object[] {credencial.getTipo(), credencial.getContrasenia(),
						credencial.getUsuario(), credencial.getHostname(), credencial.getGateway(), credencial.getDireccion_ip(), credencial.getMascara_red(),
						credencial.getServicios()}) == 1;
	}


}
