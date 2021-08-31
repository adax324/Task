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

    @Transient
    private String checkboxString;
    private Integer checkbox;


    //taski
    @OneToMany(mappedBy = "owner",fetch = FetchType.EAGER,cascade = CascadeType.REMOVE)
    private List<Task> task;









}
