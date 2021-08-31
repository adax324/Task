package com.example.contoller;

import com.example.model.Person;
import com.example.repository.PersonRepository;
import com.example.services.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.transaction.Transactional;


@Controller
public class PersonController {
    private PersonService personService;
    @Autowired
    public PersonController(PersonService personService) {

        this.personService = personService;
    }
    //create new person
    @PostMapping("persons/addNewPerson")
    public RedirectView addNewPerson(@ModelAttribute Person person){
        personService.addPerson(person);

        return new RedirectView("personList");
    }
    //get person list view
    @GetMapping("persons/personList")
    public String getPersonList(Model model){
        model.addAttribute("person",personService.getAll());

        return "persons/personList";
    }

    @GetMapping("persons/editNewPerson/{id}")
    public String getEditPerson(@PathVariable("id")String id,Model model){

        model.addAttribute("person",personService.getPerson(Long.parseLong(id)));


        return "persons/editNewPerson";
    }
    @PostMapping("persons/editNewPerson/{id}")
    public RedirectView EditPerson(@PathVariable("id") Long id,@ModelAttribute Person person){

        personService.editPerson(person,id);


        return new RedirectView("../personList");
    }

    @GetMapping("persons/addNewPerson")
    public String getAddNewPerson(){
        return "persons/addNewPerson";
    }

    //dodawanie nowej osoby

    @PostMapping("persons/delete/{id}")
    public RedirectView deletePersonById(@PathVariable Long id){
        personService.deleteById(id);
        return new RedirectView("../personList");
    }

}
