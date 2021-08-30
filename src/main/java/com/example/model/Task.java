package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "task_id")
    private Long id;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "person_id")
    private Person owner;


    private String body;



    private LocalDate addDate;
    @Transient
    private String deadLineDate;
    private LocalDate deadLineDateLD;
    //colors
    private Integer color;
    private String colorS;
    private String textColor;


    public void setColors(){
        switch (color){
        case 0:
        setColorS("border-left-success");
        setTextColor("text-success");
        break;
        case 1:
        setColorS("border-left-info");
        setTextColor("text-info");

        break;
        case 2:
        setColorS("border-left-secondary");
        setTextColor("text-secondary");

        break;
        case 3:
        setColorS("border-left-primary");
        setTextColor("text-primary");

        break;
        case 4:
        setColorS("border-left-danger");
        setTextColor("text-danger");

        break;
    } }
    public void editTask(Task editedTask){
        this.body=editedTask.getBody();
        this.deadLineDateLD=editedTask.getDeadLineDateLD();
        this.color=editedTask.getColor();
        setColors();
    }



}
