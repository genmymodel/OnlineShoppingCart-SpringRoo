package com.genmymodel.domain;

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
@RooJpaActiveRecord(sequenceName = "SHOPPINCART_SEQ")
public class ShoppinCart {

    private Date creationDate;

    @OneToOne
    private WebUser webuser;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<LineItem> item = new HashSet<LineItem>();
}
