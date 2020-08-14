package com.mx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.mx.model.Credencial;
import com.mx.service.AccesoService;

@Controller
public class AccesoController {
	
	@Autowired
	AccesoService accesoService;
	
	@GetMapping("/listaAcceso")
	public String templateAccesos() {
		return "acceso/listaAcceso";
	}
	@PostMapping("registrarAcceso")
	public @ResponseBody  String registrarEquipo(@RequestParam String tipo,
			@RequestParam String contrasenia, @RequestParam String usuario, @RequestParam String hostname, @RequestParam String ip,
			@RequestParam String mascara, @RequestParam String gateway,@RequestParam String servicio) {
		Credencial credencial = new Credencial(tipo, usuario, contrasenia, hostname, gateway, ip, mascara, servicio);
		System.out.println(credencial.toString());
		accesoService.save(credencial);		
		return "REGISTRADO CORRECTAMENTE";
	}
	
	@GetMapping("getAccesos")
    public @ResponseBody
    String PintaTablaAccesos() {
        Gson gson = new Gson();
        String camposJson = gson.toJson(accesoService.findAll());
        return camposJson;
    }


}
