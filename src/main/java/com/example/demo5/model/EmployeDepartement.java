package com.example.demo5.model;

import jakarta.persistence.*;

@Entity
@Table(name = "Employe_Departement")
public class EmployeDepartement {
    @Id
    @ManyToOne
    @JoinColumn(name = "employe_id")
    private Employe employe;

    @Id
    @ManyToOne
    @JoinColumn(name = "departement_id")
    private Departement departement;
    // Getters and setters
    public Employe getEmploye() {
        return employe;
    }

    public void setEmploye(Employe employe) {
        this.employe = employe;
    }

    public Departement getDepartement() {
        return departement;
    }

    public void setDepartement(Departement departement) {
        this.departement = departement;
    }

}

