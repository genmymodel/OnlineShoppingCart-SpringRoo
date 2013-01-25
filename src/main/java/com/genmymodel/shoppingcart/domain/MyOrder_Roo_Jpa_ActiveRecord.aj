// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.genmymodel.shoppingcart.domain;

import com.genmymodel.shoppingcart.domain.MyOrder;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MyOrder_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MyOrder.entityManager;
    
    public static final EntityManager MyOrder.entityManager() {
        EntityManager em = new MyOrder().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MyOrder.countMyOrders() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MyOrder o", Long.class).getSingleResult();
    }
    
    public static List<MyOrder> MyOrder.findAllMyOrders() {
        return entityManager().createQuery("SELECT o FROM MyOrder o", MyOrder.class).getResultList();
    }
    
    public static MyOrder MyOrder.findMyOrder(Long id) {
        if (id == null) return null;
        return entityManager().find(MyOrder.class, id);
    }
    
    public static List<MyOrder> MyOrder.findMyOrderEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MyOrder o", MyOrder.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MyOrder.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MyOrder.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MyOrder attached = MyOrder.findMyOrder(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MyOrder.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MyOrder.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MyOrder MyOrder.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MyOrder merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
