package com.mokhlisse.springbootjpa.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokhlisse.springbootjpa.dao.TaskRepository;
import com.mokhlisse.springbootjpa.model.Task;
import com.mokhlisse.springbootjpa.service.TaskService;

@Service
@Transactional
public class TaskServiceImpl implements TaskService {

	@Autowired
	TaskRepository taskRepository;

	@Override
	public List<Task> findAll() {
		List<Task> tasks = new ArrayList<>();
		for (Task task : taskRepository.findAll()) {
			tasks.add(task);
		}
		return tasks;
	}

	public Task findById(int id) throws IllegalArgumentException {

		Optional<Task> task = taskRepository.findById(id);
		if (task.isPresent()) {
			return task.get();
		}
		throw new IllegalArgumentException("no correspondante task for id = " + id);
	}

	public void save(Task task) {
		taskRepository.save(task);
	}

	public void delete(int taskId) {
		taskRepository.delete(findById(taskId));
	}

}
