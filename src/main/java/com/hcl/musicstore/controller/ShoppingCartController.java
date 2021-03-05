package com.hcl.musicstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShoppingCartController {
	
	@GetMapping("/shoppingcart")
	public String shoppingCartHandler(ModelMap model) {
		
		
		return "shopping-cart";
		
	}
	
	
	
	


}
