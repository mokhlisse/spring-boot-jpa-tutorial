package com.mokhlisse.springbootjpa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mokhlisse.springbootjpa.model.Task;
import com.mokhlisse.springbootjpa.service.TaskService;

@RestController
public class SimpleRestController {

	@Autowired
	TaskService taskService;

	@GetMapping("/findAll")
	public List<Task> findAll() {
		return taskService.findAll();
	}

	@RequestMapping("/")
	public String helloWorld() {

		return "Hello world!!";
	}
}
