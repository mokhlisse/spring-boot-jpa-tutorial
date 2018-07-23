package com.mokhlisse.springbootjpa.controller;

import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mokhlisse.springbootjpa.model.Task;
import com.mokhlisse.springbootjpa.service.TaskService;

@Controller
public class MainController {

	@Autowired
	TaskService taskService;

	@GetMapping("/home")
	public String home(Map<String, Object> model) {

		model.put("tasks", taskService.findAll());
		return "index";
	}

	@GetMapping("/addForm")
	public String addForm(Map<String, Object> model) {

		model.put("task", new Task());
		return "add-or-update";
	}

	@GetMapping("/update-task")
	public String updateForm(@RequestParam int id, Map<String, Object> model) {

		model.put("task", taskService.findById(id));
		return "add-or-update";
	}

	@GetMapping("/delete-task")
	public ModelAndView delete(@RequestParam int id, Map<String, Object> model) {

		taskService.delete(id);
		return new ModelAndView("redirect:/home", model);
	}

	@PostMapping("/save-task")
	public ModelAndView save(@ModelAttribute Task task, BindingResult bindingResult,
			Map<String, Object> model) {

		if (task.getId() == 0) {
			task.setDateCreated(new Date());
		}
		taskService.save(task);

		return new ModelAndView("redirect:/home", model);
	}
}
