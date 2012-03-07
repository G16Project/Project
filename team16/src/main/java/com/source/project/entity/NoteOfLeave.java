package com.source.project.entity;

import com.source.project.domain.Employee;
import java.util.Date;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import com.source.project.domain.EPosition;
import com.source.project.domain.TypeOfLeave;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class NoteOfLeave {

    @ManyToOne
    private Employee Infomation;

    @Enumerated
    private EPosition ePosition;

    @Enumerated
    private TypeOfLeave typeOfLeave;

    @NotNull
    private String Phone;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date TheDate;

    @Size(max = 500)
    private String Reason;

    private String PeriodOfLeave;

    private Boolean approvedByHead_Section;

    private Boolean approvedByHead_Human_Department;
}
