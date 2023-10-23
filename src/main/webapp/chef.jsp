<%@ page import="com.example.demo5.entities.Employe" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo5.entities.EmployeDepartement" %>
<%@ page import="com.example.demo5.entities.StatutTache" %>
<%@ page import="com.example.demo5.entities.PrioriteTache" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%

    if (session.getAttribute("id")!= null) {


%>
<head>
    <title>Profile Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #F5F5F5">
<div class="m-0 p-0 overflow-hidden">
    <div class="row">
        <a class="fst-italic fs-3 p-2 text-center text-decoration-none" href="#" style="color: #C9CAF0; background-color: white">
            <span class="text-dark ">Resourcium</span>Optima
        </a>


               <jsp:include page="nav.jsp"/></div>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Prénom</th>
                    <th scope="col">Post</th>
                    <th scope="col">Department</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <%
                    List<EmployeDepartement> employees = (List<EmployeDepartement>) request.getAttribute("employesDepartment");
                    for (EmployeDepartement employee : employees) {
                %>
                <tr>
                    <th scope="row"><%= employee.getEmploye().getId() %></th>
                    <td><%= employee.getEmploye().getNom() %></td>
                    <td><%= employee.getEmploye().getPrenom() %></td>
                    <td><%= employee.getDepartement().getNom() %></td>
                    <td><%= employee.getEmploye().getPost()%></td>
                    <td>


                        <button type="button" class="btn shadow mb-5 px-3 fw-bold" style="background-color: #C9CAF0; color: #8387F5"
                                data-bs-toggle="modal" data-bs-target="#addTask_<%= employee.getEmploye().getId() %>">
                            Ajouter tâche
                        </button>
                    </td>
                </tr>
                <!-- Modal for adding a task -->
                <div class="modal fade" id="addTask_<%= employee.getEmploye().getId() %>" tabindex="-1"  aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" >Ajouter Tâche</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="${pageContext.request.contextPath}/addTask" method="post">                                    <div class="mb-3">
                                        <label class="form-label">Description de la tâche</label>
                                        <textarea class="form-control" name="description" required></textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Date limite</label>
                                        <input type="date" class="form-control" name="deadline" required>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Statut de la tâche</label>
                                        <select class="form-select" name="statut" required>
                                            <option value="<%= StatutTache.EN_ATTENTE %>"><%= StatutTache.EN_ATTENTE %></option>
                                            <option value="<%= StatutTache.EN_COURS %>"><%= StatutTache.EN_COURS %></option>
                                            <option value="<%= StatutTache.TERMINEE %>"><%= StatutTache.TERMINEE %></option>
                                            <option value="<%= StatutTache.ANNULEE %>"><%= StatutTache.ANNULEE %></option>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Priorité de la tâche</label>
                                        <select class="form-select" name="priorite" required>
                                            <option value="<%= PrioriteTache.BASSE %>"><%= PrioriteTache.BASSE %></option>
                                            <option value="<%= PrioriteTache.MOYENNE %>"><%= PrioriteTache.MOYENNE %></option>
                                            <option value="<%= PrioriteTache.HAUTE %>"><%= PrioriteTache.HAUTE %></option>
                                        </select>
                                    </div>
                                    <input type="hidden" name="employeAssigne" value="<%= employee.getEmploye().getId() %>">
                                    <div class="mb-3">
                                    </div>
                                    <button type="submit" class="btn shadow mb-5 px-3 fw-bold" style="background-color: #C9CAF0; color: #8387F5">Ajouter Tache</button>

                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%
    } else {
    response.sendRedirect("login.jsp");
    }
%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
