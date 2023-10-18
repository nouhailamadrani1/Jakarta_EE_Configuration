package com.example.demo5.model;
public enum PrioriteTache {
    BASSE("Basse"),
    MOYENNE("Moyenne"),
    HAUTE("Haute");

    private final String label;

    PrioriteTache(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

