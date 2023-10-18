package com.example.demo5.model;

public enum StatutTache {
    EN_ATTENTE("En attente"),
    EN_COURS("En cours"),
    TERMINEE("Terminée"),
    ANNULEE("Annulée");

    private final String label;

    StatutTache(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
