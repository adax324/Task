package com.example.services;

import com.example.model.Task;
import com.example.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class TaskService {
    private TaskRepository taskRepository;

    @Autowired
    public TaskService(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    public void addNewTask(Task newTask) {
        newTask.setColors();
        newTask.setAddDate(LocalDate.now());
        newTask.setDeadLineDateLD(LocalDate.parse(newTask.getDeadLineDate()));


        taskRepository.saveAndFlush(newTask);
    }

    public List<Task> getAllTasks() {
        return taskRepository.findAll();
    }
    public Task getTask(Long id){
        return taskRepository.findById(id).orElseThrow(IllegalArgumentException::new);

    }


    public void editTask(Long id, Task editedTask) {
        Task task=taskRepository.findById(id).orElseThrow(()->new IllegalArgumentException());
        task.editTask(editedTask);
        taskRepository.saveAndFlush(task);
    }
}
