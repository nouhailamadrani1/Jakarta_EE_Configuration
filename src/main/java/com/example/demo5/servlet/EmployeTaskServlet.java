package com.example.demo5.servlet;

import com.example.demo5.entities.Employe;
import com.example.demo5.entities.Tache;
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

@WebServlet("/profilEmploye")
public class EmployeTaskServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idEmployee = Integer.parseInt(request.getParameter("idEmployee"));


        Employe employee = fetchEmployeeById(idEmployee);
        List<Tache> tasks = fetchTasksForEmployee(employee);


        request.setAttribute("employee", employee);
        request.setAttribute("tasks", tasks);


        request.getRequestDispatcher("profil.jsp").forward(request, response);
    }

    private Employe fetchEmployeeById(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            // Use the appropriate entity class and primary key for your Employee
            return em.find(Employe.class, id);
        } finally {
            em.close();
            emf.close();
        }
    }

    private List<Tache> fetchTasksForEmployee(Employe employee) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();

        try {
            TypedQuery<Tache> query = em.createQuery("SELECT t FROM Tache t WHERE t.employeAssigne = :employee", Tache.class);
            query.setParameter("employee", employee);

            return query.getResultList();
        } finally {
            em.close();
            emf.close();
        }
    }
}
