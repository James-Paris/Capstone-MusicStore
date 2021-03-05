package com.hcl.musicstore.model;
import javax.persistence.*;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;
import javax.persistence.criteria.CriteriaBuilder;

@Entity
public class ShoppingCart {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer cartId;

    private Integer productId;
    private Integer userId;

    @ManyToOne
    @JoinTable(
            name="cart_table",
            joinColumns= { @JoinColumn(name="music_id")},
            inverseJoinColumns = { @JoinColumn(name="user_id")}
    )

   @OneToMany(mappedBy="order", cascade = CascadeType.ALL, fetch=FetchType.EAGER)
    private Order order;

    public ShoppingCart() {
    	
    }

    



	public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }



}
