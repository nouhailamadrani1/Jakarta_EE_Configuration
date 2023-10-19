package com.example.demo5.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "Employe_Equipement")
public class EmployeEquipement {
    @Id
    @ManyToOne
    @JoinColumn(name = "employe_id")
    private Employe employe;

    @Id
    @ManyToOne
    @JoinColumn(name = "equipement_id")
    private Equipement equipement;

    // Getters and setters

    public Employe getEmploye() {
        return employe;
    }

    public void setEmploye(Employe employe) {
        this.employe = employe;
    }

    public Equipement getEquipement() {
        return equipement;
    }

    public void setEquipement(Equipement equipement) {
        this.equipement = equipement;
    }
}
