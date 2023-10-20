package com.example.demo5.servlet;

import com.example.demo5.entities.Departement;
import com.example.demo5.repositories.DepartmentRepository;

import com.example.demo5.services.DepartmentService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/department")
public class DepartmentServlet extends HttpServlet {

    private DepartmentRepository departementRepository;


    @Override
    public void init() throws ServletException {
        super.init();
        departementRepository = new DepartmentRepository();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Departement> departementList= departementRepository.findAllDepartments();
        request.setAttribute("departementList", departementList);


        request.getRequestDispatcher("departement.jsp").forward(request, response);
    }
}