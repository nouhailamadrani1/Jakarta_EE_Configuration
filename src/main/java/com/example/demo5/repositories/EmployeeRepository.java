package com.example.demo5.repositories;

import com.example.demo5.entities.Employe;

import jakarta.persistence.*;

public class EmployeeRepository {
    public boolean saveEmployee(Employe employe) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();
            em.persist(employe);
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        } finally {
            em.close();
            emf.close();
        }
    }
    public Employe getEmployeeByEmailAndPassword(String email, String password) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();
        try {
            Query query = em.createQuery("SELECT e FROM Employe e WHERE e.email = :email AND e.password = :password");
            query.setParameter("email", email);
            query.setParameter("password", password);
            return (Employe) query.getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
            emf.close();
        }
        return null;
    }
    public Employe getEmployeeById(int employeeId) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {

            return em.find(Employe.class, employeeId);
        } finally {
            em.close();
            emf.close();
        }
    }

}

