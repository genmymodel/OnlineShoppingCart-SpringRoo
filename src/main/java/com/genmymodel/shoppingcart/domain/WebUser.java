package com.genmymodel.shoppingcart.domain;

import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "WEBUSER_SEQ")
public class WebUser {

    @NotNull
    private String Mystate;

    @NotNull
    private String login;

    @NotNull
    private String Mypassword;
}
