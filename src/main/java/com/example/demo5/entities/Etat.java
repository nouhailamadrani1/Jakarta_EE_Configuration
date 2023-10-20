package com.example.demo5.entities;

public enum Etat {
    EN_SERVICE("En Service", "Vert", "Blanc"),
    DISPONIBLE("Disponible", "Bleu", "Blanc"),
    MAINTENANCE("Maintenance", "Orange", "Blanc");

    private String nom;
    private String couleurTexte;
    private String couleurFond;

    Etat(String nom, String couleurTexte, String couleurFond) {
        this.nom = nom;
        this.couleurTexte = couleurTexte;
        this.couleurFond = couleurFond;
    }

    public String getNom() {
        return nom;
    }

    public String getCouleurTexte() {
        return couleurTexte;
    }

    public String getCouleurFond() {
        return couleurFond;
    }
}
