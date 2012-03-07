package com.source.project.domain;

import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class TranferOfFunds {

    @ManyToOne
    private Employee idNameSender;

    @Enumerated
    private EPosition PositionSender;

    @ManyToOne
    private Employee idNameReceiver;

    @Enumerated
    private EPosition PositionReceiver;

    @Enumerated
    private Welfare welfare;

    private Float money;

    @NotNull
    private String AccountID;

    private Boolean Approved;
}
