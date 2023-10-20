package com.example.demo5.repositories;


import com.example.demo5.entities.Departement;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

import java.util.List;

public class DepartmentRepository {

    public List<Departement> findAllDepartments() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            Query query = em.createQuery("SELECT d FROM Departement d", Departement.class);
            return (List<Departement>) query.getResultList();
        } finally {
            em.close();
            emf.close();
        }
    }
}