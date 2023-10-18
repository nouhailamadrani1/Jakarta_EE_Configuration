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

    @Enumerated(EnumType.STRING)
    private PrioriteTache priorite;

    @ManyToOne
    @JoinColumn(name = "employeAssigne")
    private Employe employeAssigne;

    @Enumerated(EnumType.STRING)
    private StatutTache statut;

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

    public PrioriteTache getPriorite() {
        return priorite;
    }

    public void setPriorite(PrioriteTache priorite) {
        this.priorite = priorite;
    }

    public Employe getEmployeAssigne() {
        return employeAssigne;
    }

    public void setEmployeAssigne(Employe employeAssigne) {
        this.employeAssigne = employeAssigne;
    }

    public StatutTache getStatut() {
        return statut;
    }

    public void setStatut(StatutTache statut) {
        this.statut = statut;
    }
}
