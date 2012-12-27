package com.genmymodel.domain;

import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "LINEITEM_SEQ")
public class LineItem {

    private int quantity;

    private double price;

    @ManyToOne
    private ShoppinCart sc;

    @OneToOne
    private Product product;
}
