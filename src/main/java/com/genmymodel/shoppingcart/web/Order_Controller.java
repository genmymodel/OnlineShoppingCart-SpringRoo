package com.genmymodel.shoppingcart.web;

import com.genmymodel.shoppingcart.domain.Order_;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/order_s")
@Controller
@RooWebScaffold(path = "order_s", formBackingObject = Order_.class)
public class Order_Controller {
}
