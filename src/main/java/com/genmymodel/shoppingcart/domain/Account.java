package com.genmymodel.shoppingcart.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "ACCOUNT_SEQ")
public class Account {

    private long id_;

    private Date billingAddress;

    private Date open_;

    private Boolean closed;

    private String isClosed;

    @OneToOne
    private Customer customer;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<Order_> order_ = new HashSet<Order_>();

    @OneToMany(cascade = CascadeType.ALL)
    private Set<Payment> payment = new HashSet<Payment>();
}
