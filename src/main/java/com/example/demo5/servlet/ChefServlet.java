package com.example.demo5.servlet;

import com.example.demo5.entities.Employe;
import com.example.demo5.entities.EmployeDepartement;
import com.example.demo5.repositories.EmployeeDepartmentRepository;
import com.example.demo5.repositories.EmployeeRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/chef/*")
public class ChefServlet extends HttpServlet {
    private final EmployeeRepository employeeRepository;
    private final EmployeeDepartmentRepository employeeDepartmentRepository;

    public ChefServlet() {
        this.employeeRepository = new EmployeeRepository();
        this.employeeDepartmentRepository = new EmployeeDepartmentRepository();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] pathInfo = req.getPathInfo().split("/");
        if (pathInfo.length > 1) {
            String employeChefIdStr = pathInfo[1];

            try {
                int employeChefId = Integer.parseInt(employeChefIdStr);
                Employe employeChef = employeeRepository.getEmployeeById(employeChefId);

                if (employeChef != null) {
                    List<EmployeDepartement> employesDepartment = employeeDepartmentRepository.getDepartmentsWithEmployees(employeChef);

                    req.setAttribute("employesDepartment", employesDepartment);

                    req.getRequestDispatcher("/chef.jsp").forward(req, resp);
                } else {
                    // Handle the case where employeChef is not found
                    resp.sendRedirect(req.getContextPath() + "/reseau"); // You can redirect to an error page
                }
            } catch (NumberFormatException e) {
                // Handle cases where the path element is not a valid integer
                resp.sendRedirect(req.getContextPath() + "/reseau"); // You can redirect to an error page
            }
        }
    }
}