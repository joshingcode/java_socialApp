package com.springboot.socialapp.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    
    @RequestMapping("/")
    public String mainPage(){
        return "main";
    }

    @RequestMapping("eats")
    public String restaurants(){
        return "eats";
    }

}
