package com.mall.columnSite;

import com.mall.columnSite.product.ProductService;
import com.mall.columnSite.util.PageDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
public class HomeController {

    @Autowired
    ProductService productService;

    @RequestMapping(value = "/")
    public String home(Model model, PageDTO page) throws Exception{
        model.addAttribute("page", productService.pageSetting(page));
        model.addAttribute("productList", productService.showProductList(page));
        log.info("메인 화면 진입");
        return "index";
    }

    @RequestMapping(value = "/home")
    public String home2(Model model, PageDTO page) throws Exception{
        model.addAttribute("page", productService.pageSetting(page));
        model.addAttribute("productList", productService.showProductList(page));
        log.info("메인 화면 진입");
        log.debug(page.toString());
        return "index";
    }


}
