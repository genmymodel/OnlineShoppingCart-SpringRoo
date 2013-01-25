package com.genmymodel.shoppingcart.domain;

import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "LINEITEM_SEQ")
public class LineItem {

    @NotNull
    private com.genmymodel.shoppingcart.domain.Integer quantity;

    @NotNull
    private double price;
}
