package com.source.project.web;

import com.source.project.entity.RescueLeave;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/rescueleaves")
@Controller
@RooWebScaffold(path = "rescueleaves", formBackingObject = RescueLeave.class)
public class RescueLeaveController {
}
