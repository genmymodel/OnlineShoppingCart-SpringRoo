// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.genmymodel.shoppingcart.domain;

import com.genmymodel.shoppingcart.domain.MyOrder;
import com.genmymodel.shoppingcart.domain.Real;
import java.util.Date;

privileged aspect MyOrder_Roo_JavaBean {
    
    public Real MyOrder.getTotal() {
        return this.total;
    }
    
    public void MyOrder.setTotal(Real total) {
        this.total = total;
    }
    
    public String MyOrder.getShipTo() {
        return this.shipTo;
    }
    
    public void MyOrder.setShipTo(String shipTo) {
        this.shipTo = shipTo;
    }
    
    public Date MyOrder.getOrdered() {
        return this.ordered;
    }
    
    public void MyOrder.setOrdered(Date ordered) {
        this.ordered = ordered;
    }
    
    public Boolean MyOrder.getShipped() {
        return this.shipped;
    }
    
    public void MyOrder.setShipped(Boolean shipped) {
        this.shipped = shipped;
    }
    
    public String MyOrder.getStatus() {
        return this.status;
    }
    
    public void MyOrder.setStatus(String status) {
        this.status = status;
    }
    
}