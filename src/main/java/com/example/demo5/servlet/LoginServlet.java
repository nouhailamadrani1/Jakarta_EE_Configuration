package com.example.demo5.servlet;

import com.example.demo5.entities.Employe;

import com.example.demo5.services.AuthenticationService;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private AuthenticationService authenticationService;

    public LoginServlet() {
        this.authenticationService = new AuthenticationService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Employe employee = authenticationService.authenticate(email, password);

        if (employee != null) {
            HttpSession session = request.getSession();
            session.setAttribute("employeeName", employee.getNom() + employee.getPrenom());
            session.setAttribute("employeeJobTitle", employee.getPost().getLabel());
            session.setAttribute("prenom", employee.getPrenom());
            session.setAttribute("nom", employee.getNom());
            session.setAttribute("email", employee.getEmail());
            session.setAttribute("telephone", employee.getTelephone());

            request.setAttribute("loginStatus", "success");
            response.sendRedirect("reseau");
        } else {
            request.setAttribute("errorMessage", "Invalid email or password");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}