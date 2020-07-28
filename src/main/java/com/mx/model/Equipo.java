package com.mx.model;

public class Equipo {
	private String nombre;
	private String modelo;
	private String marca;
	private String serie;
	private String ubicacion;
	
	public Equipo() {
		super();
	}
	
	public Equipo(String nombre, String modelo, String marca, String serie, String ubicacion) {
		super();
		this.nombre = nombre;
		this.modelo = modelo;
		this.marca = marca;
		this.serie = serie;
		this.ubicacion = ubicacion;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getSerie() {
		return serie;
	}

	public void setSerie(String serie) {
		this.serie = serie;
	}

	public String getUbicacion() {
		return ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	@Override
	public String toString() {
		return "Equipo [nombre=" + nombre + ", modelo=" + modelo + ", marca=" + marca + ", serie=" + serie
				+ ", ubicacion=" + ubicacion + "]";
	}
	
	

}
