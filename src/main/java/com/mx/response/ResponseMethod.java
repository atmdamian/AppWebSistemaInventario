package com.mx.response;

public class ResponseMethod {
	private String mensaje;
	private String estatus;
	
	public ResponseMethod() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ResponseMethod(String mensaje, String estatus) {
		super();
		this.mensaje = mensaje;
		this.estatus = estatus;
	}
	public String getMensaje() {
		return mensaje;
	}
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	public String getEstatus() {
		return estatus;
	}
	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}
	
	
	
	
	

	
	

}
