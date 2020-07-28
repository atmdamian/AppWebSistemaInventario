package com.mx.sidesoft.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mx.model.Equipo;

@Controller
public class ListaInventarioController {
	@GetMapping("/listaInventario")
	public String templateListaInventario(Map<String,String> map) {
		map.put("titulo", "Lista inventario y Registro");
		return "inventario/listaInventario";
	}
	
	@GetMapping("registrarEquipo")
	public String guardarEquipo(@RequestParam String nombre, @RequestParam String modelo,@RequestParam String marca
			,@RequestParam String serie, @RequestParam String ubicacion ) {		
		Equipo nuevoEquipo= new Equipo(nombre, modelo, marca, serie, ubicacion);
		System.out.println(nuevoEquipo.toString());
		return "REGISTRADO CORRECTAMENTE";
	}
}
