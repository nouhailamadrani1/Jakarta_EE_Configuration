package com.example.demo5.servlet;

import com.example.demo5.entities.Employe;
import com.example.demo5.entities.EmployeEquipement;
import com.example.demo5.repositories.EmployeEquipementRepository;
import com.example.demo5.repositories.EmployeeRepository;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/reservations")
public class ViewReservationsServlet extends HttpServlet {
    private EmployeEquipementRepository employeEquipementRepository;
    private EmployeeRepository employeeRepository;

    public ViewReservationsServlet() {
        employeEquipementRepository = new EmployeEquipementRepository();
        employeeRepository = new EmployeeRepository();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


          int employeId =Integer.parseInt(request.getParameter("idEmploye"));



            Employe employe = employeeRepository.getEmployeeById(employeId);

            List<EmployeEquipement> reservations = employeEquipementRepository.getEmployeEquipementByEmploye(employe);

            request.setAttribute("reservations", reservations);
            request.getRequestDispatcher("reservations.jsp").forward(request, response);


        }

}