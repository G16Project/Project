// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.source.project.entity;

import com.source.project.entity.FinanceDepartment;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect FinanceDepartment_Roo_Jpa_Entity {
    
    declare @type: FinanceDepartment: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long FinanceDepartment.id;
    
    @Version
    @Column(name = "version")
    private Integer FinanceDepartment.version;
    
    public Long FinanceDepartment.getId() {
        return this.id;
    }
    
    public void FinanceDepartment.setId(Long id) {
        this.id = id;
    }
    
    public Integer FinanceDepartment.getVersion() {
        return this.version;
    }
    
    public void FinanceDepartment.setVersion(Integer version) {
        this.version = version;
    }
    
}