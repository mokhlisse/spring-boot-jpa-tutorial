package com.mokhlisse.springbootjpa.service;

import java.util.List;

import com.mokhlisse.springbootjpa.model.Task;

public interface TaskService {

	public List<Task> findAll();

	public Task findById(int id);

	public void delete(int id);
	
	public void save(Task task);
}
