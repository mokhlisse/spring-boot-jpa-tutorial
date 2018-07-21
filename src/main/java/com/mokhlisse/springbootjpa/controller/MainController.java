package com.mokhlisse.springbootjpa.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

	@GetMapping("/home")
	public String home(@RequestParam String user, Map<String, Object> model) {

		model.put("user", user);
		return "index";
	}
}
