package com.hcl.musicstore.service;

import java.math.BigDecimal;
import java.util.Map;



import com.hcl.musicstore.model.Music;

public interface ShoppingCartService {
	

    void addProduct(Music product);

    void removeProduct(Music product);

    Map<Music, Integer> getProductsInCart();

    void checkout();

    BigDecimal getTotal();
}
