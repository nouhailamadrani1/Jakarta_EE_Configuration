package com.example.demo5.servlet;

import com.example.demo5.entities.Equipement;
import com.example.demo5.repositories.EquipementRepository;

import com.example.demo5.services.EquipementService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/equipements")
public class EquipementServlet extends HttpServlet {

    private EquipementRepository equipementRepository;


    @Override
    public void init() throws ServletException {
        super.init();
        equipementRepository = new EquipementRepository();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Equipement> equipmentList = equipementRepository.findAllEquipements();
        request.setAttribute("equipmentList", equipmentList);
        request.getRequestDispatcher("equipement.jsp").forward(request, response);
    }
}