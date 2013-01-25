package com.genmymodel.shoppingcart.domain;

import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "PRODUCT_SEQ")
public class Product {

    @NotNull
    private String Myname;

    @NotNull
    private String description;
}
