package com.genmymodel.shoppingcart.web;

import com.genmymodel.shoppingcart.domain.MyOrder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/myorders")
@Controller
@RooWebScaffold(path = "myorders", formBackingObject = MyOrder.class)
public class MyOrderController {
}
