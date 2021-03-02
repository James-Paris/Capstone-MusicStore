package com.hcl.musicstore.repository;

import org.springframework.data.repository.CrudRepository;

import com.hcl.musicstore.model.User;


public interface UserRepository extends CrudRepository<User, Integer> {
	public User findUserByUsername(String name);
}
