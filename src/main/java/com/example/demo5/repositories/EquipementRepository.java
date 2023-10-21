package com.example.demo5.repositories;

import com.example.demo5.entities.Equipement;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

import java.util.List;

public class EquipementRepository {



    public List<Equipement> findAllEquipements() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            Query query = em.createQuery("SELECT e FROM Equipement e", Equipement.class);
            return (List<Equipement>) query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
            emf.close();
        }
        return null;
    }

    public Equipement findEquipementById(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            return em.find(Equipement.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
            emf.close();
        }
        return null;
    }

    public Equipement saveEquipement(Equipement equipement) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            em.getTransaction().begin();
            em.persist(equipement);
            em.getTransaction().commit();
            return equipement;
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        } finally {
            em.close();
            emf.close();
        }
        return null;
    }


    public void deleteEquipement(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            em.getTransaction().begin();
            Equipement equipement = em.find(Equipement.class, id);
            if (equipement != null) {
                em.remove(equipement);
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