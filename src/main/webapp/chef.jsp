<% if (session.getAttribute("id") != null) { %>
<%@ page import="com.example.demo5.entities.Employe" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo5.entities.EmployeDepartement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #F5F5F5">
<div class="m-0 p-0 overflow-hidden">
    <div class="row">
        <div class="col-md-2 bg-white">
            <a class="fst-italic fs-3 mt-2 mx-2 d-flex align-items-center text-decoration-none" href="#" style="color: #C9CAF0;">
                <span class="text-dark">Resourcium</span>Optima
            </a>
            <h5 class="mt-5 px-2">Admin</h5>
            <h6 class="mt-3 px-2">Action</h6>
            <ul class="px-2 mt-2 list-group list-group-flush">
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <!-- Button trigger modal -->
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                </li>
            </ul>
        </div>
        <div class="col-md-10">
            <!-- Your existing content here -->
            <jsp:include page="nav.jsp"/>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Prénom</th>
                    <th scope="col">Post</th>
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
                    <td><%= employee.getEmploye().getPost()%></td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addTask_<%= employee.getEmploye().getId() %>">
                            Ajouter tâche
                        </button>
                    </td>
                </tr>
                <!-- Modal for adding a task -->
                <div class="modal fade" id="addTask_<%= employee.getEmploye().getId() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" >Ajouter Tâche</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="addTask" method="post">
                                    <div class="mb-3">
                                        <label class="form-label">Description de la tâche</label>
                                        <textarea class="form-control" name="description" required></textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Date limite</label>
                                        <input type="date" class="form-control" name="deadline" required>
                                    </div>
                                    <div class="mb-3">
                                        <label  class="form-label">Priorité de la tâche</label>
                                        <select class="form-select" name="priorite" required>
                                            <option value="HAUTE">Haute</option>
                                            <option value="MOYENNE">Moyenne</option>
                                            <option value="FAIBLE">Faible</option>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Employé assigné</label>
                                        <input type="" name="employeAssigne" value="<%= employee.getEmploye().getId() %>"/>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Ajouter</button>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
                                <button type="button" class="btn btn-primary">Enregistrer</button>
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
