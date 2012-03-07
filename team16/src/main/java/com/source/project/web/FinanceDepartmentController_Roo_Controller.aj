// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.source.project.web;

import com.source.project.domain.EPosition;
import com.source.project.domain.Employee;
import com.source.project.domain.TimeForJob;
import com.source.project.entity.FinanceDepartment;
import com.source.project.web.FinanceDepartmentController;
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

privileged aspect FinanceDepartmentController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String FinanceDepartmentController.create(@Valid FinanceDepartment financeDepartment, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, financeDepartment);
            return "financedepartments/create";
        }
        uiModel.asMap().clear();
        financeDepartment.persist();
        return "redirect:/financedepartments/" + encodeUrlPathSegment(financeDepartment.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String FinanceDepartmentController.createForm(Model uiModel) {
        populateEditForm(uiModel, new FinanceDepartment());
        return "financedepartments/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String FinanceDepartmentController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("financedepartment", FinanceDepartment.findFinanceDepartment(id));
        uiModel.addAttribute("itemId", id);
        return "financedepartments/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String FinanceDepartmentController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("financedepartments", FinanceDepartment.findFinanceDepartmentEntries(firstResult, sizeNo));
            float nrOfPages = (float) FinanceDepartment.countFinanceDepartments() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("financedepartments", FinanceDepartment.findAllFinanceDepartments());
        }
        addDateTimeFormatPatterns(uiModel);
        return "financedepartments/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String FinanceDepartmentController.update(@Valid FinanceDepartment financeDepartment, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, financeDepartment);
            return "financedepartments/update";
        }
        uiModel.asMap().clear();
        financeDepartment.merge();
        return "redirect:/financedepartments/" + encodeUrlPathSegment(financeDepartment.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String FinanceDepartmentController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, FinanceDepartment.findFinanceDepartment(id));
        return "financedepartments/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String FinanceDepartmentController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        FinanceDepartment financeDepartment = FinanceDepartment.findFinanceDepartment(id);
        financeDepartment.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/financedepartments";
    }
    
    void FinanceDepartmentController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("financeDepartment_startjob_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void FinanceDepartmentController.populateEditForm(Model uiModel, FinanceDepartment financeDepartment) {
        uiModel.addAttribute("financeDepartment", financeDepartment);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("epositions", Arrays.asList(EPosition.values()));
        uiModel.addAttribute("employees", Employee.findAllEmployees());
        uiModel.addAttribute("timeforjobs", Arrays.asList(TimeForJob.values()));
    }
    
    String FinanceDepartmentController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
