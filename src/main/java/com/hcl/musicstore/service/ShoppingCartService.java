package com.hcl.musicstore.service;

import java.math.BigDecimal;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.musicstore.model.Music;
import com.hcl.musicstore.model.ShoppingCart;
import com.hcl.musicstore.repository.CartRepository;

@Service
@Transactional
public class ShoppingCartService {
	
	@Autowired
	CartRepository cartRepo;
	
	public void addCart(ShoppingCart cart) {
	        cartRepo.save(cart);
	}

   /*void addProduct(Music product);

    void removeProduct(Music product);

    Map<Music, Integer> getProductsInCart();

    void checkout();

    BigDecimal getTotal();*/
}
