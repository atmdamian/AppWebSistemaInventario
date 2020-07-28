package com.mx.sidesoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mx.model.Usuario;

@Controller
public class LoginController {

	@GetMapping(path="/login")
	public ModelAndView templateLogin() {
		return new ModelAndView("login/login","command", new Usuario());
	}
}
