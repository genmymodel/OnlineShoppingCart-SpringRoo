package com.genmymodel.domain;

import com.genmymodel.reference.OrderStatus;
import java.util.Date;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "ORDER__SEQ")
public class Order_ {

    private Date number_;

    private Date ordered;

    private String shipped;

    private double shipTo;

    @Enumerated
    private OrderStatus total;

    private String status;

    @ManyToOne
    private Account account;
}
