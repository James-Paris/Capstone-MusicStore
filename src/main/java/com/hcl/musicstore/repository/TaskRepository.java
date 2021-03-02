package com.hcl.musicstore.repository;

import org.springframework.data.repository.CrudRepository;

import com.hcl.musicstore.model.Task;

public interface TaskRepository extends CrudRepository<Task, Integer> {

}
