package com.example.demo5.model;

public enum PrioriteTache {
    BASSE("Basse", "#3498db", "#ffffff"),   // Blue background, white text
    MOYENNE("Moyenne", "#f1c40f", "#000000"), // Yellow background, black text
    HAUTE("Haute", "#e74c3c", "#ffffff");   // Red background, white text

    private final String label;
    private final String color;
    private final String textColor;

    PrioriteTache(String label, String color, String textColor) {
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
