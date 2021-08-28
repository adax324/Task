package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TechnologyController {
    @GetMapping("/technology")
    public String getTechnology(){
        return "technology/technology";
    }
}
