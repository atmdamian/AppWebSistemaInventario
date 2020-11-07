package com.mx.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mx.service.AccesoService;

@Controller
public class ViewAccesoController {
		
		@GetMapping("/listaAcceso")
		public String templateAccesos() {
			return "acceso/listaAcceso";
		}

}
