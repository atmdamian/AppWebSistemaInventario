package com.mx.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
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
	
	
	public List<Credencial> findAll() {
		return jdbcTemplate.query("SELECT * FROM credencial_acceso",
				new RowMapper<Credencial>() {

					public Credencial mapRow(ResultSet rs, int rowNum)
							throws SQLException {
						Credencial credencial = new Credencial();
						credencial.setId_credencial(rs.getInt("id_credencial"));
						credencial.setTipo(rs.getString("tipo"));
						credencial.setContrasenia(rs.getString("contrasenia"));
						credencial.setUsuario(rs.getString("usuario"));
						credencial.setHostname(rs.getString("hostname"));
						credencial.setGateway(rs.getString("gateway"));
						credencial.setDireccion_ip(rs.getString("direccion_ip"));
						credencial.setMascara_red(rs.getString("mascara_red"));
						credencial.setServicios(rs.getString("servicios"));
						

						return credencial;
					}
				});
	}

	public boolean delete(Credencial credencial) {
		 String sql = "DELETE FROM credencial_acceso WHERE id_credencial = ?";
		 return jdbcTemplate
					.update(sql,
							new Object[] {credencial.getId_credencial()}) == 1;
	}
	

}
