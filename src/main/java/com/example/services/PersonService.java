package com.example.services;

import com.example.model.Person;
import com.example.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service

public class PersonService {
    private PersonRepository personRepository;

    @Autowired
    public PersonService(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    public void addPerson(Person newPerson) {
        personRepository.saveAndFlush(newPerson);
    }

    public List<Person> getAll() {
        return personRepository.findAll();
    }

    public void deleteById(Long id) {
        personRepository.deleteById(id);
        System.out.println("Deleting peron with id= " + id);
    }

    public Person getPerson(Long id) {
        return personRepository.findById(id).orElseThrow(IllegalArgumentException::new);
    }

    public void editPerson(Person person, Long id) {

        Person editPerson = personRepository.findById(id).get();
        editPerson.setFirstName(person.getFirstName());
        editPerson.setLastName(person.getLastName());
        editPerson.setUrlGit(person.getUrlGit());
        editPerson.setDescription(person.getDescription());
        editPerson.setJava(person.getJava());
        editPerson.setBestPractice(person.getBestPractice());
        editPerson.setTdd(person.getTdd());
        editPerson.setQuestion(person.getQuestion());
        editPerson.setHibernate(person.getHibernate());
        editPerson.setHtml(person.getHtml());
        editPerson.setJsp(person.getJsp());
        editPerson.setThymeleaf(person.getThymeleaf());
        editPerson.setGit(person.getGit());
        editPerson.setCheckbox(Integer.parseInt(person.getCheckboxString()));

        personRepository.saveAndFlush(editPerson);
    }
}
