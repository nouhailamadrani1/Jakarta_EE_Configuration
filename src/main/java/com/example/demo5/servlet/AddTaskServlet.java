package com.example.demo5.servlet;

import com.example.demo5.entities.Employe;
import com.example.demo5.entities.Tache;
import com.example.demo5.entities.PrioriteTache;
import com.example.demo5.entities.StatutTache;
import com.example.demo5.repositories.EmployeeRepository;
import com.example.demo5.services.TaskService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/addTask")
public class AddTaskServlet extends HttpServlet {
    private final EmployeeRepository employeeRepository;
    private final TaskService taskService;

    public AddTaskServlet() {
        this.employeeRepository = new EmployeeRepository();
        this.taskService = new TaskService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        String deadlineStr = request.getParameter("deadline");
        String statutStr = request.getParameter("statut");
        String prioriteStr = request.getParameter("priorite");
        int employeAssigneId = Integer.parseInt(request.getParameter("employeAssigne"));

        Employe employeeAssigne = employeeRepository.getEmployeeById(employeAssigneId);

        try {
            Date deadline = new SimpleDateFormat("yyyy-MM-dd").parse(deadlineStr);

            Tache task = new Tache();
            task.setDescription(description);
            task.setDeadline(deadline);
            task.setStatut(StatutTache.valueOf(statutStr));
            task.setPriorite(PrioriteTache.valueOf(prioriteStr));
            task.setEmployeAssigne(employeeAssigne);

            taskService.createTask(task);

            response.sendRedirect("reseau");
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}
