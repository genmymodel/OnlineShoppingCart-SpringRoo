// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.genmymodel.domain;

import com.genmymodel.domain.Account;
import com.genmymodel.domain.Customer;
import com.genmymodel.domain.Order_;
import com.genmymodel.domain.Payment;
import java.util.Date;
import java.util.Set;

privileged aspect Account_Roo_JavaBean {
    
    public long Account.getId_() {
        return this.id_;
    }
    
    public void Account.setId_(long id_) {
        this.id_ = id_;
    }
    
    public Date Account.getBillingAddress() {
        return this.billingAddress;
    }
    
    public void Account.setBillingAddress(Date billingAddress) {
        this.billingAddress = billingAddress;
    }
    
    public Date Account.getOpen_() {
        return this.open_;
    }
    
    public void Account.setOpen_(Date open_) {
        this.open_ = open_;
    }
    
    public Boolean Account.getClosed() {
        return this.closed;
    }
    
    public void Account.setClosed(Boolean closed) {
        this.closed = closed;
    }
    
    public String Account.getIsClosed() {
        return this.isClosed;
    }
    
    public void Account.setIsClosed(String isClosed) {
        this.isClosed = isClosed;
    }
    
    public Customer Account.getCustomer() {
        return this.customer;
    }
    
    public void Account.setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    public Set<Order_> Account.getOrder_() {
        return this.order_;
    }
    
    public void Account.setOrder_(Set<Order_> order_) {
        this.order_ = order_;
    }
    
    public Set<Payment> Account.getPayment() {
        return this.payment;
    }
    
    public void Account.setPayment(Set<Payment> payment) {
        this.payment = payment;
    }
    
}
