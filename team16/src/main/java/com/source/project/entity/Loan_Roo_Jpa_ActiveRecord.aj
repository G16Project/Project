// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.source.project.entity;

import com.source.project.entity.Loan;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Loan_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Loan.entityManager;
    
    public static final EntityManager Loan.entityManager() {
        EntityManager em = new Loan().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Loan.countLoans() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Loan o", Long.class).getSingleResult();
    }
    
    public static List<Loan> Loan.findAllLoans() {
        return entityManager().createQuery("SELECT o FROM Loan o", Loan.class).getResultList();
    }
    
    public static Loan Loan.findLoan(Long id) {
        if (id == null) return null;
        return entityManager().find(Loan.class, id);
    }
    
    public static List<Loan> Loan.findLoanEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Loan o", Loan.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Loan.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Loan.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Loan attached = Loan.findLoan(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Loan.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Loan.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Loan Loan.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Loan merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
