package com.example.demo5.servlet;

import com.example.demo5.entities.Departement;
import com.example.demo5.entities.Employe;
import com.example.demo5.entities.Equipement;
import com.example.demo5.entities.Etat;
import com.example.demo5.repositories.DepartmentRepository;

import com.example.demo5.repositories.EmployeeRepository;
import com.example.demo5.services.DepartementService;
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

@WebServlet("/department")
public class DepartmentServlet extends HttpServlet {

    private DepartementService departementService;
    private DepartmentRepository departementRepository;
    private EmployeeRepository employeeRepository;


    @Override
    public void init() throws ServletException {
        super.init();
        departementRepository = new DepartmentRepository();
        departementService =new DepartementService();
        employeeRepository= new EmployeeRepository();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Departement> departementList= departementRepository.findAllDepartments();
        request.setAttribute("departementList", departementList);


        request.getRequestDispatcher("departement.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
                case "add":
                    handleAddDepartment(request, response);
                    break;
                case "update":
                    handleUpdateDepartment(request, response);
                    break;
                case "delete":
                    handleDeleteDepartment(request, response);
                    break;
                default:
                    System.out.println("h");
            }
        } else {
            System.out.println("hh");

        }
    }
    private void handleAddDepartment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nom = request.getParameter("nom");
        String description = request.getParameter("description");
       int chefId = Integer.parseInt(request.getParameter("chef"));
        Employe chef = employeeRepository.getEmployeeById(chefId);

        Departement department = new Departement();
        department.setNom(nom);
        department.setDescription(description);
        department.setChef(chef);


        departementService.saveDepartement(department);

        response.sendRedirect("department");
    }

    private void handleUpdateDepartment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("departments");
    }

    private void handleDeleteDepartment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("departments");
    }

}