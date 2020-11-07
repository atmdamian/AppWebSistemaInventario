package com.mx.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.mx.model.Credencial;
import com.mx.response.ResponseMethod;
import com.mx.service.AccesoService;

@RestController
public class AccesoController {
	
	@Autowired
	AccesoService accesoService;
	
	
	@PostMapping(value = "api/postRegistrarAcceso", consumes = "application/json")
	public @ResponseBody ResponseEntity<?> registrarEquipo(@RequestBody Credencial credencial) {
		try {
			
			if(credencial != null) {
				if(accesoService.save(credencial)) {
					
					return new ResponseEntity<String>(new Gson().toJson(new ResponseMethod("GUARDADO CORRECTAMENTE","200")), HttpStatus.OK);
				}
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return new ResponseEntity<String>(new Gson().toJson(new ResponseMethod("NO GUARDO CORRECTAMENTE/ELIMINADO ANTERIOR MENTE","500")),HttpStatus.NOT_FOUND);

	}
	
	@GetMapping(value="getAccesos")
    public @ResponseBody ResponseEntity<?> PintaTablaAccesos() {
		
        try {            
            if(new Gson().toJson(accesoService.findAll()) != null) {
            	
                return new ResponseEntity<String>(new Gson().toJson(accesoService.findAll()), HttpStatus.OK );
            }

        }catch(Exception e){
        	e.printStackTrace();
        }
		return new ResponseEntity<String>(new Gson().toJson(new ResponseMethod("NO ENCONTRADO","400")),HttpStatus.NOT_FOUND);


    }
	
	
	@PostMapping(value = "api/deleteAcceso", consumes = "application/json")
	public @ResponseBody ResponseEntity<?> deleteById(@RequestBody Credencial credencial) {
		try {
			
			if(credencial != null) {
				if(accesoService.delete(credencial)) {
				return new ResponseEntity<String>(new Gson().toJson(new ResponseMethod("ELIMINADO CORRECTAMENTE","200")), HttpStatus.OK);
			    }			
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return new ResponseEntity<String>(new Gson().toJson(new ResponseMethod("NO SE ELIMINADO CORRECTAMENTE/ELIMINADO ANTERIOR MENTE","200")),HttpStatus.NOT_FOUND);
	}


}
