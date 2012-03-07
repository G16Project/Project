// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.source.project.entity;

import com.source.project.entity.NoteOfLeave;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect NoteOfLeave_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager NoteOfLeave.entityManager;
    
    public static final EntityManager NoteOfLeave.entityManager() {
        EntityManager em = new NoteOfLeave().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long NoteOfLeave.countNoteOfLeaves() {
        return entityManager().createQuery("SELECT COUNT(o) FROM NoteOfLeave o", Long.class).getSingleResult();
    }
    
    public static List<NoteOfLeave> NoteOfLeave.findAllNoteOfLeaves() {
        return entityManager().createQuery("SELECT o FROM NoteOfLeave o", NoteOfLeave.class).getResultList();
    }
    
    public static NoteOfLeave NoteOfLeave.findNoteOfLeave(Long id) {
        if (id == null) return null;
        return entityManager().find(NoteOfLeave.class, id);
    }
    
    public static List<NoteOfLeave> NoteOfLeave.findNoteOfLeaveEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM NoteOfLeave o", NoteOfLeave.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void NoteOfLeave.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void NoteOfLeave.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            NoteOfLeave attached = NoteOfLeave.findNoteOfLeave(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void NoteOfLeave.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void NoteOfLeave.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public NoteOfLeave NoteOfLeave.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        NoteOfLeave merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}