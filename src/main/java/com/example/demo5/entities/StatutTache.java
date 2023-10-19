package com.example.demo5.entities;

public enum StatutTache {
    EN_ATTENTE("En attente", "#f39c12", "#000000"),  // Yellow background, black text
    EN_COURS("En cours", "#27ae60", "#ffffff"),    // Green background, white text
    TERMINEE("Terminée", "#3498db", "#ffffff"),   // Blue background, white text
    ANNULEE("Annulée", "#e74c3c", "#ffffff");   // Red background, white text

    private final String label;
    private final String color;
    private final String textColor;

    StatutTache(String label, String color, String textColor) {
        this.label = label;
        this.color = color;
        this.textColor = textColor;
    }

    public String getLabel() {
        return label;
    }

    public String getColor() {
        return color;
    }

    public String getTextColor() {
        return textColor;
    }
}
