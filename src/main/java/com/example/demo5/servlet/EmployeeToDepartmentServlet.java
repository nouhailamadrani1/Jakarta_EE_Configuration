package com.example.demo5.servlet;

import com.example.demo5.entities.Employe;
import com.example.demo5.entities.Departement;
import com.example.demo5.entities.EmployeDepartement;
import com.example.demo5.services.DepartementService;
import com.example.demo5.services.EmployeeDepartmentService;
import com.example.demo5.services.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EmployeeToDepartment")
public class EmployeeToDepartmentServlet extends HttpServlet {

    private EmployeeService employeeService;
    private DepartementService departementService;
    private EmployeeDepartmentService employeeDepartmentService;

    @Override
    public void init() throws ServletException {
        super.init();
        employeeService = new EmployeeService();
        departementService = new DepartementService();
        employeeDepartmentService = new EmployeeDepartmentService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int employeeId = Integer.parseInt(request.getParameter("employeeId"));
        int departmentId = Integer.parseInt(request.getParameter("departmentId"));

        Employe employee = employeeService.getEmployeeById(employeeId);
        Departement department = departementService.getDepartementById(departmentId);

        if (employee != null && department != null) {
            EmployeDepartement employeeDepartment = new EmployeDepartement();
            employeeDepartment.setEmploye(employee);
            employeeDepartment.setDepartement(department);

            employeeDepartmentService.saveEmployeeDepartment(employeeDepartment);
            response.sendRedirect("admin");
        }
    }
}