package com.example.demo5.services;

import com.example.demo5.entities.Equipement;
import com.example.demo5.repositories.EquipementRepository;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class EquipementService {

    private final EquipementRepository equipementRepository;

    public EquipementService() {
        this.equipementRepository = new EquipementRepository();
    }

    public List<Equipement> getAllEquipements() {
        return equipementRepository.findAllEquipements();
    }

    public Equipement getEquipementById(int id) {
        return equipementRepository.findEquipementById(id);
    }

    public Equipement saveEquipement(Equipement equipement) throws IllegalArgumentException {
        // Validate the equipment data
        if (equipement.getNom() == null || equipement.getNom().isEmpty() ||
                equipement.getType() == null || equipement.getType().isEmpty() ||
                equipement.getDateAchat() == null || equipement.getDateMaintenance() == null) {
            throw new IllegalArgumentException("Equipment data is incomplete.");
        }

        if (!isValidDate(equipement.getDateAchat()) || !isValidDate(equipement.getDateMaintenance())) {
            throw new IllegalArgumentException("Invalid date format. Use yyyy-MM-dd.");
        }

        // Perform the save operation if the data is valid
        return equipementRepository.saveEquipement(equipement);
    }

    public void deleteEquipement(int id) {
        equipementRepository.deleteEquipement(id);
    }

    private boolean isValidDate(Date date) {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String formattedDate = sdf.format(date);
            return formattedDate.equals(sdf.format(sdf.parse(formattedDate)));
        } catch (ParseException e) {
            return false;
        }
    }
}
