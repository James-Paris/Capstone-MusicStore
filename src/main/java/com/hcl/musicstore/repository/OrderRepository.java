package com.hcl.musicstore.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.hcl.musicstore.model.Order;

@Repository
public interface OrderRepository extends CrudRepository<Order, Integer> {

}
