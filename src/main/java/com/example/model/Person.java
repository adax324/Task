package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
public class Person {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "person_id")
    private Long id;

    private String firstName;
    private String lastName;
    private String urlGit;
    private String description;
//    pola umiejetnosci
    private Integer java;
    private Integer bestPractice;
    private Integer tdd;
    private Integer question;
    private Integer hibernate;
    private Integer html;
    private Integer jsp;
    private Integer thymeleaf;
    private Integer git;
    private Integer checkbox;
    //taski
    @OneToMany(mappedBy = "owner",fetch = FetchType.EAGER,cascade = CascadeType.REMOVE)
    private List<Task> task;

    public Person(Long id, String firstName, String lastName, String urlGit, String description) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.urlGit = urlGit;
        this.description = description;
        this.java=0;
        this.bestPractice=0;
        this.tdd=0;
        this.question=0;
        this.hibernate=0;
        this.html=0;
        this.jsp=0;
        this.thymeleaf=0;
        this.git=0;
        this.checkbox=0;

    }







}
