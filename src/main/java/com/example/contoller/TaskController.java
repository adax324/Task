package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TaskController {
    @GetMapping("tasks/addTask")
    public String getAddTask(){
        return "tasks/addTask";
    }
    @GetMapping("tasks/all")
    public String getAllTasks(){
        return "tasks/tasks";
    }
}
