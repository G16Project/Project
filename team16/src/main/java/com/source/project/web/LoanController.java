package com.source.project.web;

import com.source.project.entity.Loan;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/loans")
@Controller
@RooWebScaffold(path = "loans", formBackingObject = Loan.class)
public class LoanController {
}
