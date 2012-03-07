package com.source.project.web;

import com.source.project.entity.NoteOfLeave;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/noteofleaves")
@Controller
@RooWebScaffold(path = "noteofleaves", formBackingObject = NoteOfLeave.class)
public class NoteOfLeaveController {
}
