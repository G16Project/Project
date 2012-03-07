package com.source.project.entity;

import com.source.project.domain.EPosition;
import com.source.project.domain.Employee;
import com.source.project.domain.TimeForJob;
import java.util.Date;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class FinanceDepartment {

    @ManyToOne
    private Employee Information;

    @Enumerated
    private EPosition ePosition;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date startJob;

    @Enumerated
    private TimeForJob timeForJob;

    private Float Bonuses;

    @NotNull
    private String accountNumber;

    private Boolean approveBymanager;
}
