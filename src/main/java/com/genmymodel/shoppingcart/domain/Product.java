package com.genmymodel.shoppingcart.domain;

import javax.persistence.OneToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "PRODUCT_SEQ")
public class Product {

    private String name_;

    private String description;

    @OneToOne
    private LineItem item;
}