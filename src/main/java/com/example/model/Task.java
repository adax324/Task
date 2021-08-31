package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import static com.example.enums.ColorsEnum.*;

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
    private String deadLineDateString;
    private LocalDate deadLineDate;
    //colors
    private Integer codeColor;
    private String sideColor;
    private String textColor;


    public void setColors(){
        switch (codeColor){
        case 0:
        setSideColor(success.getSideColor());
        setTextColor(success.getTextColor());
        break;
        case 1:
        setSideColor(info.getSideColor());
        setTextColor(info.getTextColor());

        break;
        case 2:
        setSideColor(secondary.getSideColor());
        setTextColor(secondary.getTextColor());

        break;
        case 3:
        setSideColor(primary.getSideColor());
        setTextColor(primary.getTextColor());

        break;
        case 4:
        setSideColor(danger.getSideColor());
        setTextColor(danger.getTextColor());

        break;
    } }
    public void editTask(Task editedTask){
        this.body=editedTask.getBody();
        this.deadLineDate =editedTask.getDeadLineDate();
        this.codeColor =editedTask.getCodeColor();
        setColors();
    }
    public static List<String> listOfBgColorsByCode(){
        return new ArrayList<>(List.of(success.getBgColor(), info.getBgColor(), secondary.getBgColor(),
                primary.getBgColor(), danger.getBgColor()));
    }



}
