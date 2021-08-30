package com.example.services;

import com.example.model.Task;
import com.example.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.Comparator;
import java.util.List;

@Service
@Transactional
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
    public List<Task> getSortedAllTasks() {
        List<Task> tasks=taskRepository.findAll();
        tasks.sort(new Comparator<Task>() {
            @Override
            public int compare(Task o1, Task o2) {
                return o1.getColor()- o2.getColor();
            }
        });
        return tasks;
    }

    public Task getTask(Long id){
        return taskRepository.findById(id).orElseThrow(IllegalArgumentException::new);

    }


    public void editTask(Long id, Task editedTask) {
        Task task=taskRepository.findById(id).orElseThrow(()->new IllegalArgumentException());
        task.editTask(editedTask);
        taskRepository.saveAndFlush(task);
    }
    public void deleteTask(Long id){
        taskRepository.deleteById(id);
    }
}
