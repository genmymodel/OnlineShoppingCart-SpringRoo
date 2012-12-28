package com.genmymodel.shoppingcart.domain;

import javax.persistence.OneToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "CUSTOMER_SEQ")
public class Customer {

    private String address;

    private String phone;

    private String email;

    @OneToOne
    private WebUser webuser;

    @OneToOne
    private Account acc;
}
