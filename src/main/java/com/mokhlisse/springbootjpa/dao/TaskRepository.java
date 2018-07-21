package com.mokhlisse.springbootjpa.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mokhlisse.springbootjpa.model.Task;

@Repository
public interface TaskRepository extends CrudRepository<Task, Integer> {

}
