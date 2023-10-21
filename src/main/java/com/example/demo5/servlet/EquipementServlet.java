package com.example.demo5.servlet;

import com.example.demo5.entities.Equipement;
import com.example.demo5.entities.Etat;
import com.example.demo5.services.EquipementService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/equipements")
public class EquipementServlet extends HttpServlet {

    private EquipementService equipementService;

    @Override
    public void init() throws ServletException {
        super.init();
        equipementService = new EquipementService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Equipement> equipmentList = equipementService.getAllEquipements();
        request.setAttribute("equipmentList", equipmentList);
        request.getRequestDispatcher("equipement.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
                case "add":
                    handleAddEquipement(request, response);
                    break;
                case "update":
                    handleUpdateEquipement(request, response);
                    break;
                case "delete":
                    handleDeleteEquipement(request, response);
                    break;
                default:
                    response.sendRedirect("equipements");
            }
        } else {
            response.sendRedirect("equipements");
        }
    }

    private void handleAddEquipement(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String nom = request.getParameter("nomEquipement");
            String type = request.getParameter("type");
            String dateAchatStr = request.getParameter("dateAchat");
            String dateMaintenanceStr = request.getParameter("dateMaintenance");
            String etatStr = request.getParameter("etat");

            Date dateAchat = new SimpleDateFormat("yyyy-MM-dd").parse(dateAchatStr);
            Date dateMaintenance = new SimpleDateFormat("yyyy-MM-dd").parse(dateMaintenanceStr);

            Equipement equipement = new Equipement();
            equipement.setNom(nom);
            equipement.setType(type);
            equipement.setDateAchat(dateAchat);
            equipement.setDateMaintenance(dateMaintenance);
            equipement.setEtat(Etat.valueOf(etatStr));

            equipementService.saveEquipement(equipement);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        response.sendRedirect("equipements");
    }

    private void handleUpdateEquipement(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            int equipementId = Integer.parseInt(request.getParameter("equipementId"));
            String nom = request.getParameter("nomEquipement");
            String type = request.getParameter("type");
            String dateAchatStr = request.getParameter("dateAchat");
            String dateMaintenanceStr = request.getParameter("dateMaintenance");
            Etat etatStr = Etat.valueOf(request.getParameter("etat"));

            Date dateAchat = new SimpleDateFormat("yyyy-MM-dd").parse(dateAchatStr);
            Date dateMaintenance = new SimpleDateFormat("yyyy-MM-dd").parse(dateMaintenanceStr);

            Equipement equipement = equipementService.getEquipementById(equipementId);

            if (equipement != null) {
                equipement.setNom(nom);
                equipement.setType(type);
                equipement.setDateAchat(dateAchat);
                equipement.setDateMaintenance(dateMaintenance);
                equipement.setEtat(etatStr);
                equipementService.saveEquipement(equipement);
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        response.sendRedirect("equipements"); // Redirect to equipment list page
    }

    private void handleDeleteEquipement(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int equipementId = Integer.parseInt(request.getParameter("equipementId"));
        equipementService.deleteEquipement(equipementId);
        response.sendRedirect("equipements"); // Redirect to equipment list page
    }
}
