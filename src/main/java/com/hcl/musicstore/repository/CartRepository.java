package com.hcl.musicstore.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import java.security.Principal;

import com.hcl.musicstore.model.ShoppingCart;

import com.hcl.musicstore.model.Music;
import com.hcl.musicstore.model.User;
import com.hcl.musicstore.service.MusicService;
import com.hcl.musicstore.service.UserService;


public interface CartRepository extends CrudRepository<ShoppingCart, Integer> {
//    @Autowired
//    UserService userService;

//    String userName = request
//
//            task.setUser(userService.getUserByName(principal.getName()));
//    @Query(value = "INSERT INTO Shopping_Cart VALUE()
//    public List<Music> findMusicBySearch(String keyword);
}
