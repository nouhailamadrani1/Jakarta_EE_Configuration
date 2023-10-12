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
import java.util.List;

@WebServlet(name = "EmployeServlet", value = "/employe")
public class EmployeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Create an EntityManager to interact with the database
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        // Retrieve a list of Employe objects from the database
        List<Employe> employes = em.createQuery("SELECT e FROM Employe e", Employe.class).getResultList();

        // Close the EntityManager and EntityManagerFactory
        em.close();
        emf.close();

        // Set the list of employes as an attribute for the JSP view
        request.setAttribute("employes", employes);

        // Forward the request to a JSP view
        request.getRequestDispatcher("/WEB-INF/jsp/employe.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve and process form data here (e.g., create or update an Employe object)

        // Redirect to the doGet method to display the updated list
        doGet(request, response);
    }
}
