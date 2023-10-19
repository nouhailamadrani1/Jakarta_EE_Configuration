package com.example.demo5.entities;

public enum Post {
    CHEF_DE_DEPARTEMENT("Chef de Département"),
    DEVELOPPEUR("Développeur"),
    TECHNICIEN("Technicien"),
    DESIGNER("Designer"),
    ANALYSTE("Analyste"),
    TESTEUR("Testeur"),
    RESPONSABLE_PROJET("Responsable de Projet");

    private String label;

    Post(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
