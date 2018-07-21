package com.mokhlisse.springbootjpa.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SimpleRestController {

	@RequestMapping("/")
	public String helloWorld() {

		return "Hello world!!";
	}
}
