package com.mall.columnSite;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String home(Model model) throws Exception{
        log.info("메인 화면 진입");
        return "index";
    }

    @RequestMapping(value = "/home")
    public String home2(Model model) {
        log.info("메인 화면 진입");
        return "index";
    }


}
