package com.example.demo5.repositories;

import com.example.demo5.entities.Employe;
import com.example.demo5.entities.EmployeEquipement;
import jakarta.persistence.*;

import java.util.List;

public class EmployeEquipementRepository {
   ;

    public boolean createEmployeEquipement(EmployeEquipement employeEquipement) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();
            em.persist(employeEquipement);
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


    public List<EmployeEquipement> getEmployeEquipementByEmploye(Employe employe) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();
        return em.createQuery("SELECT e FROM EmployeEquipement e WHERE e.employe = :employe", EmployeEquipement.class)
                .setParameter("employe", employe)
                .getResultList();
    }

//    public EmployeEquipement getEmployeEquipementById(Long id) {
//        return em.find(EmployeEquipement.class, id);
//    }

//    public List<EmployeEquipement> getAllEmployeEquipements() {
//        return em.createQuery("SELECT e FROM EmployeEquipement e", EmployeEquipement.class).getResultList();
//    }

//    public void updateEmployeEquipement(EmployeEquipement employeEquipement) {
//        em.getTransaction().begin();
//        em.merge(employeEquipement);
//        em.getTransaction().commit();
//    }

//    public void deleteEmployeEquipement(EmployeEquipement employeEquipement) {
//        em.getTransaction().begin();
//        em.remove(employeEquipement);
//        em.getTransaction().commit();
//    }
}
