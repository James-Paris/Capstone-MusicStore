package com.hcl.musicstore.repository;

import org.springframework.data.repository.CrudRepository;

import com.hcl.musicstore.model.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
	public User findUserByUsername(String name);
}
