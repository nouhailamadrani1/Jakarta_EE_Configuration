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
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private EntityManagerFactory entityManagerFactory;

    @Override
    public void init() throws ServletException {
        entityManagerFactory = Persistence.createEntityManagerFactory("default");
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
            // Retrieve the employee information after successful login
            Employe employee = retrieveEmployee(email, password);

            if (employee != null) {
                HttpSession session = request.getSession();
                session.setAttribute("employeeName", employee.getNom() + employee.getPrenom());
                session.setAttribute("employeeJobTitle", employee.getPost().getLabel());
                session.setAttribute("prenom",employee.getPrenom());
                session.setAttribute("nom",employee.getNom());
                session.setAttribute("email",employee.getEmail());
                session.setAttribute("telephone",employee.getTelephone());


                request.setAttribute("loginStatus", "success");
                response.sendRedirect("reseau");
            } else {
                request.setAttribute("errorMessage", "Invalid email or password");
                RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                dispatcher.forward(request, response);
            }
        }
    }

    private Employe retrieveEmployee(String email, String password) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            Query query = entityManager.createQuery("SELECT e FROM Employe e WHERE e.email = :email AND e.password = :password");
            query.setParameter("email", email);
            query.setParameter("password", password);

            return (Employe) query.getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }

        return null;
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