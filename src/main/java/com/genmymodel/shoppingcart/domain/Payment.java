package com.genmymodel.shoppingcart.domain;

import javax.persistence.ManyToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "PAYMENT_SEQ")
public class Payment {

    private double paidDate;

    private String total;

    private String details;

    @ManyToOne
    private Account account;
}