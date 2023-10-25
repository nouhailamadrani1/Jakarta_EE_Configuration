package com.example.demo5.repositories;

import com.example.demo5.entities.Departement;
import com.example.demo5.entities.Employe;
import com.example.demo5.entities.EmployeDepartement;
import jakarta.persistence.*;

import java.util.List;

public class EmployeeDepartmentRepository {

    public boolean saveEmployeeDepartment(EmployeDepartement employeeDepartment) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();
            em.persist(employeeDepartment);
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

    public List<EmployeDepartement> getDepartmentsWithEmployees(Employe employeChef) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        Query query = em.createQuery(
                "SELECT ed FROM EmployeDepartement ed " +
                        "INNER JOIN ed.employe e " +
                        "INNER JOIN ed.departement d " +
                        "WHERE d.chef = :employeChef", EmployeDepartement.class
        );

        query.setParameter("employeChef", employeChef);

        List<EmployeDepartement> results = query.getResultList();

        em.close();
        emf.close();

        return results;
    }
    public EmployeDepartement getDepartmentEmploye(Employe employe) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();



        Query query = em.createQuery(
                "SELECT ed FROM EmployeDepartement ed " +
                        "INNER JOIN ed.employe e " +
                        "INNER JOIN ed.departement d " +
                        "WHERE e = :employe", EmployeDepartement.class
        );

        query.setParameter("employe", employe);

        EmployeDepartement employeeDepartment = (EmployeDepartement) query.getSingleResult();

        em.close();
        emf.close();

        return employeeDepartment;
    }
}
