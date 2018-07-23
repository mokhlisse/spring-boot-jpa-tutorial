package com.mokhlisse.springbootjpa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mokhlisse.springbootjpa.model.Task;
import com.mokhlisse.springbootjpa.service.TaskService;

@RestController
public class SimpleRestController {

	@Autowired
	TaskService taskService;

	@GetMapping("/find-all")
	public List<Task> findAll() {
		return taskService.findAll();
	}

	@GetMapping("/find")
	public Task find(@RequestParam int id) {
		return taskService.findById(id);
	}

	@GetMapping("/delete")
	public String delete(@RequestParam int id) {

		taskService.delete(id);
		return "Task deleted!!";
	}

	@RequestMapping("/")
	public String helloWorld() {

		return "Hello world!!";
	}
}
