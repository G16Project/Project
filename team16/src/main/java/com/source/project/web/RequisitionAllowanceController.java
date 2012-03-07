package com.source.project.web;

import com.source.project.entity.RequisitionAllowance;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/requisitionallowances")
@Controller
@RooWebScaffold(path = "requisitionallowances", formBackingObject = RequisitionAllowance.class)
public class RequisitionAllowanceController {
}
