// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.genmymodel.shoppingcart.web;

import com.genmymodel.shoppingcart.domain.MyOrder;
import com.genmymodel.shoppingcart.web.MyOrderController;
import java.io.UnsupportedEncodingException;
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

privileged aspect MyOrderController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String MyOrderController.create(@Valid MyOrder myOrder, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, myOrder);
            return "myorders/create";
        }
        uiModel.asMap().clear();
        myOrder.persist();
        return "redirect:/myorders/" + encodeUrlPathSegment(myOrder.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String MyOrderController.createForm(Model uiModel) {
        populateEditForm(uiModel, new MyOrder());
        return "myorders/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String MyOrderController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("myorder", MyOrder.findMyOrder(id));
        uiModel.addAttribute("itemId", id);
        return "myorders/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String MyOrderController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("myorders", MyOrder.findMyOrderEntries(firstResult, sizeNo));
            float nrOfPages = (float) MyOrder.countMyOrders() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("myorders", MyOrder.findAllMyOrders());
        }
        addDateTimeFormatPatterns(uiModel);
        return "myorders/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String MyOrderController.update(@Valid MyOrder myOrder, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, myOrder);
            return "myorders/update";
        }
        uiModel.asMap().clear();
        myOrder.merge();
        return "redirect:/myorders/" + encodeUrlPathSegment(myOrder.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String MyOrderController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, MyOrder.findMyOrder(id));
        return "myorders/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String MyOrderController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        MyOrder myOrder = MyOrder.findMyOrder(id);
        myOrder.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/myorders";
    }
    
    void MyOrderController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("myOrder_ordered_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void MyOrderController.populateEditForm(Model uiModel, MyOrder myOrder) {
        uiModel.addAttribute("myOrder", myOrder);
        addDateTimeFormatPatterns(uiModel);
    }
    
    String MyOrderController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
