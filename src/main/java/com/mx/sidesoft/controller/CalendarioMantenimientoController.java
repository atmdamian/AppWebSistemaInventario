package com.mx.sidesoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CalendarioMantenimientoController {
	
	@GetMapping("/calendarioMantenimiento")
	public String templateCalendarioMantenimiento() {
		return "calendario/calendarioMantenimiento";
	}

}
