package com.example.demo5.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "Employe_Departement")
public class EmployeDepartement {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "employe_id")
    private Employe employe;

    @ManyToOne
    @JoinColumn(name = "departement_id")
    private Departement departement;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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
