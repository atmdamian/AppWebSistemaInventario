package com.mx.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mx.model.Equipo;
import com.mx.service.EquipoService;

@Controller
public class ListaInventarioController {
	@Autowired
	EquipoService equipoService;
	
	@GetMapping("/listaInventario")
	public String templateListaInventario(Map<String,String> map) {
		map.put("titulo", "Lista inventario y Registro");
		return "inventario/listaInventario";
	}
	
	@GetMapping("registrarEquipo")
	public @ResponseBody String guardarEquipo(@RequestParam String nombre, @RequestParam String modelo,@RequestParam String marca
			,@RequestParam String serie, @RequestParam String ubicacion ) {
		Equipo equipo = new Equipo(nombre, modelo, marca, serie, ubicacion);
		equipoService.save(equipo);
		System.out.println("Controller: "+ equipo.toString());
		return "REGISTRADO CORRECTAMENTE";
	}
}
