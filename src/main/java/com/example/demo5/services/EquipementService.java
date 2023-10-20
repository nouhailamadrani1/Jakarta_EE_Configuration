package com.example.demo5.services;

import com.example.demo5.entities.Equipement;
import com.example.demo5.repositories.EquipementRepository;


import java.util.List;

public class EquipementService {

    private final EquipementRepository equipementRepository;


    public EquipementService(EquipementRepository equipementRepository) {
        this.equipementRepository = equipementRepository;
    }

    public List<Equipement> getAllEquipements() {
        return equipementRepository.findAllEquipements();
    }

    public Equipement getEquipementById(int id) {
        return equipementRepository.findEquipementById(id);
    }

    public Equipement saveEquipement(Equipement equipement) {
        return equipementRepository.saveEquipement(equipement);
    }

    public void deleteEquipement(int id) {
        equipementRepository.deleteEquipement(id);
    }
}