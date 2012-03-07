// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.source.project.web;

import com.source.project.domain.EPosition;
import com.source.project.domain.Employee;
import com.source.project.domain.TypeOfLeave;
import com.source.project.entity.NoteOfLeave;
import com.source.project.web.NoteOfLeaveController;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect NoteOfLeaveController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String NoteOfLeaveController.create(@Valid NoteOfLeave noteOfLeave, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, noteOfLeave);
            return "noteofleaves/create";
        }
        uiModel.asMap().clear();
        noteOfLeave.persist();
        return "redirect:/noteofleaves/" + encodeUrlPathSegment(noteOfLeave.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String NoteOfLeaveController.createForm(Model uiModel) {
        populateEditForm(uiModel, new NoteOfLeave());
        return "noteofleaves/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String NoteOfLeaveController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("noteofleave", NoteOfLeave.findNoteOfLeave(id));
        uiModel.addAttribute("itemId", id);
        return "noteofleaves/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String NoteOfLeaveController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("noteofleaves", NoteOfLeave.findNoteOfLeaveEntries(firstResult, sizeNo));
            float nrOfPages = (float) NoteOfLeave.countNoteOfLeaves() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("noteofleaves", NoteOfLeave.findAllNoteOfLeaves());
        }
        addDateTimeFormatPatterns(uiModel);
        return "noteofleaves/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String NoteOfLeaveController.update(@Valid NoteOfLeave noteOfLeave, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, noteOfLeave);
            return "noteofleaves/update";
        }
        uiModel.asMap().clear();
        noteOfLeave.merge();
        return "redirect:/noteofleaves/" + encodeUrlPathSegment(noteOfLeave.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String NoteOfLeaveController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, NoteOfLeave.findNoteOfLeave(id));
        return "noteofleaves/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String NoteOfLeaveController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        NoteOfLeave noteOfLeave = NoteOfLeave.findNoteOfLeave(id);
        noteOfLeave.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/noteofleaves";
    }
    
    void NoteOfLeaveController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("noteOfLeave_thedate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void NoteOfLeaveController.populateEditForm(Model uiModel, NoteOfLeave noteOfLeave) {
        uiModel.addAttribute("noteOfLeave", noteOfLeave);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("epositions", Arrays.asList(EPosition.values()));
        uiModel.addAttribute("employees", Employee.findAllEmployees());
        uiModel.addAttribute("typeofleaves", Arrays.asList(TypeOfLeave.values()));
    }
    
    String NoteOfLeaveController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}