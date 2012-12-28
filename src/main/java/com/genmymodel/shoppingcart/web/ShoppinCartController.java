package com.genmymodel.shoppingcart.web;

import com.genmymodel.shoppingcart.domain.ShoppinCart;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/shoppincarts")
@Controller
@RooWebScaffold(path = "shoppincarts", formBackingObject = ShoppinCart.class)
public class ShoppinCartController {
}
