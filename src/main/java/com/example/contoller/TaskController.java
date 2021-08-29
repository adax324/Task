package com.example.contoller;

import com.example.model.Task;
import com.example.services.PersonService;
import com.example.services.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class TaskController {
    private PersonService personService;
    private TaskService taskService;
    @Autowired
    public TaskController(PersonService personService, TaskService taskService) {
        this.personService = personService;
        this.taskService = taskService;
    }

    @GetMapping("tasks/addTask")
    public String getAddTask(Model model){
        model.addAttribute("persons",personService.getAll());
        return "tasks/addTask";
    }
    @GetMapping("tasks/editTask/{id}")
    public String getEditTask(@PathVariable Long id, Model model){
        model.addAttribute("task",taskService.getTask(id));

        return "tasks/editTask";
    }
    @PostMapping("tasks/editTask/{id}")
    public RedirectView editTask(@PathVariable Long id, @ModelAttribute Task editedTask){
        taskService.editTask(id,editedTask);

        return new RedirectView("../all");
    }
    @PostMapping("tasks/addTask")
    public RedirectView addNewTask(@ModelAttribute Task newTask){
        taskService.addNewTask(newTask);
        return new RedirectView("all");
    }
    @GetMapping("tasks/all")
    public String getAllTasks(Model model){
        model.addAttribute("tasks",taskService.getAllTasks());
        return "tasks/tasks";
    }
    @PostMapping("tasks/delete/{id}")
    public String deleteTask(@PathVariable Long id){

    }
}
