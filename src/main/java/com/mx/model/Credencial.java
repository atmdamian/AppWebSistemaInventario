package com.mx.model;

public class Credencial {
	private Integer id_credencial;
	private String tipo;
	private String usuario;
	private String contrasenia;
	private String hostname;
	private String gateway;
	private String direccion_ip;
	private String mascara_red;
	private String servicios;
			
	
	
	
	public Integer getId_credencial() {
		return id_credencial;
	}
	public void setId_credencial(Integer id_credencial) {
		this.id_credencial = id_credencial;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getContrasenia() {
		return contrasenia;
	}
	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}
	public String getHostname() {
		return hostname;
	}
	public void setHostname(String hostname) {
		this.hostname = hostname;
	}
	public String getGateway() {
		return gateway;
	}
	public void setGateway(String gateway) {
		this.gateway = gateway;
	}
	public String getDireccion_ip() {
		return direccion_ip;
	}
	public void setDireccion_ip(String direccion_ip) {
		this.direccion_ip = direccion_ip;
	}
	public String getMascara_red() {
		return mascara_red;
	}
	public void setMascara_red(String mascara_red) {
		this.mascara_red = mascara_red;
	}
	public String getServicios() {
		return servicios;
	}
	public void setServicios(String servicios) {
		this.servicios = servicios;
	}
	@Override
	public String toString() {
		return "Credencial [tipo=" + tipo + ", usuario=" + usuario + ", contrasenia=" + contrasenia + ", hostname="
				+ hostname + ", gateway=" + gateway + ", direccion_ip=" + direccion_ip + ", mascara_red=" + mascara_red
				+ ", servicios=" + servicios + "]";
	}
	
	
	

}
