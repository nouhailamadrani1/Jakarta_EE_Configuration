package com.example.demo5.servlet;

import com.example.demo5.entities.Employe;
import com.example.demo5.entities.Tache;
import com.example.demo5.repositories.EmployeEquipementRepository;
import com.example.demo5.repositories.EmployeeRepository;
import com.example.demo5.repositories.EquipementRepository;
import com.example.demo5.services.EmployeeService;
import com.example.demo5.services.TaskService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/profilEmploye")
public class EmployeTaskServlet extends HttpServlet {

    private final TaskService employeeTaskService;
    private final EmployeeService employeeService;
    private EmployeEquipementRepository employeEquipementRepository;
    private EquipementRepository equipementRepository;
    private EmployeeRepository employeeRepository;


    public EmployeTaskServlet() {
        this.employeeTaskService = new TaskService();
        this.employeeService= new EmployeeService();
    }
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idEmployee = Integer.parseInt(request.getParameter("idEmployee"));
        Employe employee = employeeService.getEmployeeById(idEmployee);
        List<Tache> tasks = employeeTaskService.getTasksForEmployee(employee.getId());

        request.setAttribute("employee", employee);
        request.setAttribute("tasks", tasks);

        request.getRequestDispatcher("profil.jsp").forward(request, response);
    }
}
