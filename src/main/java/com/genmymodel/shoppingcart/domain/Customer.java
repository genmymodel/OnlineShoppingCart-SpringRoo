package com.genmymodel.shoppingcart.domain;

import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "CUSTOMER_SEQ")
public class Customer {

    @NotNull
    private String address;

    @NotNull
    private String email;

    @NotNull
    private String phone;
}
