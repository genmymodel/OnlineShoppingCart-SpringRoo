// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.genmymodel.domain;

import com.genmymodel.domain.LineItem;
import com.genmymodel.domain.Product;
import com.genmymodel.domain.ShoppinCart;

privileged aspect LineItem_Roo_JavaBean {
    
    public int LineItem.getQuantity() {
        return this.quantity;
    }
    
    public void LineItem.setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public double LineItem.getPrice() {
        return this.price;
    }
    
    public void LineItem.setPrice(double price) {
        this.price = price;
    }
    
    public ShoppinCart LineItem.getSc() {
        return this.sc;
    }
    
    public void LineItem.setSc(ShoppinCart sc) {
        this.sc = sc;
    }
    
    public Product LineItem.getProduct() {
        return this.product;
    }
    
    public void LineItem.setProduct(Product product) {
        this.product = product;
    }
    
}
