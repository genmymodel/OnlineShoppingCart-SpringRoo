// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.genmymodel.shoppingcart.domain;

import com.genmymodel.shoppingcart.domain.Account;
import java.util.Date;

privileged aspect Account_Roo_JavaBean {
    
    public Date Account.getClosed() {
        return this.closed;
    }
    
    public void Account.setClosed(Date closed) {
        this.closed = closed;
    }
    
    public String Account.getBillingAddress() {
        return this.billingAddress;
    }
    
    public void Account.setBillingAddress(String billingAddress) {
        this.billingAddress = billingAddress;
    }
    
    public Date Account.getMyopen() {
        return this.Myopen;
    }
    
    public void Account.setMyopen(Date Myopen) {
        this.Myopen = Myopen;
    }
    
    public Boolean Account.getIsClosed() {
        return this.isClosed;
    }
    
    public void Account.setIsClosed(Boolean isClosed) {
        this.isClosed = isClosed;
    }
    
}
