package com.source.project.entity;

import java.util.Date;

import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

import com.source.project.domain.EPosition;
import com.source.project.domain.Employee;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class RequisitionAllowance {

    @ManyToOne
    private Employee information;

    @Enumerated
    private EPosition ePosition;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date dateWork;

    @NotNull
    @Size(min = 2)
    private String timeWork;

    @NotNull
    @Size(min = 2)
    private String job;

    private Float money;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date dateNow;

    private Boolean approvedByFinance_Department;

    private Boolean approvedByHead_Finance_Department;
}
