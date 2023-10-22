package com.example.demo5.services;

import com.example.demo5.entities.EmployeDepartement;
import com.example.demo5.repositories.EmployeeDepartmentRepository;

public class EmployeeDepartmentService {
    private final EmployeeDepartmentRepository employeeDepartmentRepository;

    public EmployeeDepartmentService() {
        this.employeeDepartmentRepository = new EmployeeDepartmentRepository();
    }

    public boolean saveEmployeeDepartment(EmployeDepartement employeeDepartment) {
        return employeeDepartmentRepository.saveEmployeeDepartment(employeeDepartment);
    }
}
