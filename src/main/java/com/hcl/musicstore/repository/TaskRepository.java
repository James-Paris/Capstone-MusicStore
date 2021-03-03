package com.hcl.musicstore.repository;

import org.springframework.data.repository.CrudRepository;

import com.hcl.musicstore.model.Music;

public interface TaskRepository extends CrudRepository<Music, Integer> {

}
