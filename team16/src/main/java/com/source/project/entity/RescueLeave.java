package com.source.project.entity;

import com.source.project.domain.EPosition;
import com.source.project.domain.Employee;
import com.source.project.domain.Rescue;
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

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class RescueLeave {

    @ManyToOne
    private Employee information;

    @Enumerated
    private EPosition ePosition;

    @NotNull
    private String Phone;

    @Size(max = 70)
    private String Address;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date TimeDate;

    @Enumerated
    private Rescue RescueType;

    @Size(max = 100)
    private String Reason;

    private Boolean ApproveByFinance_Department;

    private Boolean ApproveByManager;
}
