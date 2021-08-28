package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class PersonController {
    @GetMapping("persons/personList")
    public String getPersonList(){
        return "persons/personList";
    }

    @GetMapping("persons/editNewPerson")
    public String getEditPerson(){
        return "persons/editNewPerson";
    }
    @GetMapping("persons/addNewPerson")
    public String getAddNewPerson(){
        return "persons/addNewPerson";
    }
}
