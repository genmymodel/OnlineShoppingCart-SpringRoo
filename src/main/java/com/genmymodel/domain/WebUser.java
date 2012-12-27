package com.genmymodel.domain;

import com.genmymodel.reference.UserState;
import javax.persistence.Enumerated;
import javax.persistence.OneToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "WEBUSER_SEQ")
public class WebUser {

    private String login;

    private String password_;

    @Enumerated
    private UserState state_;

    @OneToOne
    private Customer customer;

    @OneToOne
    private ShoppinCart shoppincart;
}
