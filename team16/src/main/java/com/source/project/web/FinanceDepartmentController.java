package com.source.project.web;

import com.source.project.entity.FinanceDepartment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/financedepartments")
@Controller
@RooWebScaffold(path = "financedepartments", formBackingObject = FinanceDepartment.class)
public class FinanceDepartmentController {
}
