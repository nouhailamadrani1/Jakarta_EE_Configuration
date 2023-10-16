package com.example.demo5.servlet;

import com.example.demo5.model.Employe;

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
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private EntityManagerFactory entityManagerFactory;

    @Override
    public void init() throws ServletException {
        entityManagerFactory = Persistence.createEntityManagerFactory("default"); // Persistence Unit name
    }

    @Override
    public void destroy() {
        entityManagerFactory.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Display the login form
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        boolean isAuthenticated = authenticate(email, password);

        if (isAuthenticated) {

            response.sendRedirect("reseau.jsp");
        } else {

            request.setAttribute("errorMessage", "Invalid email or password");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }

    private boolean authenticate(String email, String password) {


        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            Query query = entityManager.createQuery("SELECT e FROM Employe e WHERE e.email = :email AND e.password = :password");
            query.setParameter("email", email);
            query.setParameter("password", password);

            Employe employee = (Employe) query.getSingleResult();

            if (employee != null) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            entityManager.close();
        }

        return false;
    }
}