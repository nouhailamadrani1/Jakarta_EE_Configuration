package com.example.demo5.model;

import jakarta.persistence.*;


import java.util.Date;
@Entity
@Table(name = "Tache")
public class Tache {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String description;
    private Date deadline;
    private String priorite;

    @ManyToOne
    @JoinColumn(name = "employeAssigne")
    private Employe employeAssigne;

    private String statut;

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public String getPriorite() {
        return priorite;
    }

    public void setPriorite(String priorite) {
        this.priorite = priorite;
    }

    public Employe getEmployeAssigne() {
        return employeAssigne;
    }

    public void setEmployeAssigne(Employe employeAssigne) {
        this.employeAssigne = employeAssigne;
    }

    public String getStatut() {
        return statut;
    }

    public void setStatut(String statut) {
        this.statut = statut;
    }
}
