package com.example.demo5.servlet;

import com.example.demo5.model.Employe;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "create-employee", value = "/create-employee")
public class CreateEmployeeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Display the create_employee.jsp view
        request.getRequestDispatcher("/WEB-INF/jsp/create_employee.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String poste = request.getParameter("poste");
        String dateEmbaucheStr = request.getParameter("dateEmbauche");

        // Convert the date string to a Date object
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date dateEmbauche = null;
        try {
            dateEmbauche = dateFormat.parse(dateEmbaucheStr);
        } catch (ParseException e) {
            e.printStackTrace();
            // Handle the parse exception if needed
        }

        // Create a new Employe object and set its properties
        Employe employee = new Employe();
        employee.setUsername(username);
        employee.setPassword(password);
        employee.setNom(nom);
        employee.setPrenom(prenom);
        employee.setEmail(email);
        employee.setPoste(poste);
        employee.setDateEmbauche(dateEmbauche);

        // Persist the employee object to the database using JPA
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        em.persist(employee);
        em.getTransaction().commit();

        em.close();
        emf.close();

        // Redirect to a success page or perform any other necessary actions
        response.sendRedirect(request.getContextPath() + "/success.jsp");
    }
}
