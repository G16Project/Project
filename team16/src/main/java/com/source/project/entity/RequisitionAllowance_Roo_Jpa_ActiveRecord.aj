// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.source.project.entity;

import com.source.project.entity.RequisitionAllowance;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RequisitionAllowance_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager RequisitionAllowance.entityManager;
    
    public static final EntityManager RequisitionAllowance.entityManager() {
        EntityManager em = new RequisitionAllowance().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long RequisitionAllowance.countRequisitionAllowances() {
        return entityManager().createQuery("SELECT COUNT(o) FROM RequisitionAllowance o", Long.class).getSingleResult();
    }
    
    public static List<RequisitionAllowance> RequisitionAllowance.findAllRequisitionAllowances() {
        return entityManager().createQuery("SELECT o FROM RequisitionAllowance o", RequisitionAllowance.class).getResultList();
    }
    
    public static RequisitionAllowance RequisitionAllowance.findRequisitionAllowance(Long id) {
        if (id == null) return null;
        return entityManager().find(RequisitionAllowance.class, id);
    }
    
    public static List<RequisitionAllowance> RequisitionAllowance.findRequisitionAllowanceEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM RequisitionAllowance o", RequisitionAllowance.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void RequisitionAllowance.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void RequisitionAllowance.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            RequisitionAllowance attached = RequisitionAllowance.findRequisitionAllowance(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void RequisitionAllowance.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void RequisitionAllowance.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public RequisitionAllowance RequisitionAllowance.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        RequisitionAllowance merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
