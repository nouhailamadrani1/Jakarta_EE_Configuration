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

    public Departement findDepartmentById(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            return em.find(Departement.class, id);
        } finally {
            em.close();
            emf.close();
        }
    }

    public Departement saveDepartment(Departement department) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            em.getTransaction().begin();
            em.persist(department);
            em.getTransaction().commit();
            return department;
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        } finally {
            em.close();
            emf.close();
        }
        return null;
    }

    public void deleteDepartment(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            em.getTransaction().begin();
            Departement department = em.find(Departement.class, id);
            if (department != null) {
                em.remove(department);
            }
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        } finally {
            em.close();
            emf.close();
        }
    }
}
