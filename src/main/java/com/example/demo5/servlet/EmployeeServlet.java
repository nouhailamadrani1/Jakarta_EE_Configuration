package com.example.demo5.servlet;

import com.example.demo5.entities.Employe;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/reseau")
public class EmployeeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        String jpql = "SELECT e FROM Employe e";
        TypedQuery<Employe> query = em.createQuery(jpql, Employe.class);
        List<Employe> employees = query.getResultList();

        em.close();
        emf.close();

        request.setAttribute("employees", employees);

        request.getRequestDispatcher("reseau.jsp").forward(request, response);
    }
}
