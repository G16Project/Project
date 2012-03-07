package com.source.project.web;

import com.source.project.domain.TranferOfFunds;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tranferoffundses")
@Controller
@RooWebScaffold(path = "tranferoffundses", formBackingObject = TranferOfFunds.class)
public class TranferOfFundsController {
}
