package com.example.demo5.repositories;

import com.example.demo5.entities.Tache;
import com.example.demo5.entities.Employe;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;
import jakarta.persistence.Persistence;

import java.util.List;

public class TaskRepository {
    public List<Tache> getTasksForEmployee(Employe employee) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            TypedQuery<Tache> query = em.createQuery("SELECT t FROM Tache t WHERE t.employeAssigne = :employee", Tache.class);
            query.setParameter("employee", employee);

            return query.getResultList();
        } finally {
            em.close();
            emf.close();
        }
    }
}
