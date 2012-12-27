// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.genmymodel.domain;

import com.genmymodel.domain.Order_;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Order__Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Order_.entityManager;
    
    public static final EntityManager Order_.entityManager() {
        EntityManager em = new Order_().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Order_.countOrder_s() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Order_ o", Long.class).getSingleResult();
    }
    
    public static List<Order_> Order_.findAllOrder_s() {
        return entityManager().createQuery("SELECT o FROM Order_ o", Order_.class).getResultList();
    }
    
    public static Order_ Order_.findOrder_(Long id) {
        if (id == null) return null;
        return entityManager().find(Order_.class, id);
    }
    
    public static List<Order_> Order_.findOrder_Entries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Order_ o", Order_.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Order_.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Order_.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Order_ attached = Order_.findOrder_(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Order_.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Order_.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Order_ Order_.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Order_ merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
