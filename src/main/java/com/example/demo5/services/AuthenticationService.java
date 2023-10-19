package com.example.demo5.services;

import com.example.demo5.entities.Employe;
import com.example.demo5.repositories.EmployeeRepository;


public class AuthenticationService {
    private EmployeeRepository employeeRepository;

    public AuthenticationService() {
        this.employeeRepository = new EmployeeRepository();
    }

    public Employe authenticate(String email, String password) {
        Employe employee = employeeRepository.getEmployeeByEmailAndPassword(email, password);

        if (employee != null) {
            return employee;
        }
        return null;
    }
}
