package com.example.demo5.services;

import com.example.demo5.entities.Departement;
import com.example.demo5.repositories.DepartmentRepository;

import java.util.List;

public class DepartementService {
    private final DepartmentRepository departmentRepository;

    public DepartementService() {
        this.departmentRepository = new DepartmentRepository();
    }

    public List<Departement> getAllDepartements() {
        return departmentRepository.findAllDepartments();
    }

    public Departement getDepartementById(int id) {
        return departmentRepository.findDepartmentById(id);
    }

    public Departement saveDepartement(Departement departement) {
        return departmentRepository.saveDepartment(departement);
    }

    public void deleteDepartement(int id) {
        departmentRepository.deleteDepartment(id);
    }
}
