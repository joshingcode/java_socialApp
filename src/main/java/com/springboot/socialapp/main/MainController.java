package com.springboot.socialapp.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    
    @GetMapping("/")
    public String mainPage(){
        return "main";
    }

    @GetMapping("eats")
    public String restaurants(){
        return "eats";
    }

}
