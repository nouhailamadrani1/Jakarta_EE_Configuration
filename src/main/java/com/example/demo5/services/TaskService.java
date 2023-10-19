package com.example.demo5.services;

import com.example.demo5.entities.Tache;
import com.example.demo5.entities.Employe;
import com.example.demo5.repositories.TaskRepository;
import com.example.demo5.repositories.EmployeeRepository;

import java.util.ArrayList;
import java.util.List;

public class TaskService {
    private TaskRepository taskRepository;
    private EmployeeRepository employeeRepository;

    public TaskService() {
        this.taskRepository = new TaskRepository();
        this.employeeRepository = new EmployeeRepository();
    }

    public List<Tache> getTasksForEmployee(int employeeId) {
        Employe employee = employeeRepository.getEmployeeById(employeeId);
        if (employee != null) {
            return taskRepository.getTasksForEmployee(employee);
        }
        return new ArrayList<>();
    }
}
