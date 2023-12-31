<%@ page import="com.example.demo5.entities.Tache" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo5.entities.StatutTache" %>
<%@ page import="com.example.demo5.entities.Employe" %>
<%--
  Author: Youcode
  Date: 15/10/2023
  Time: 21:04
  This JSP template is used to display user profiles.
--%>

<%
    if (session.getAttribute("id") != null) {
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
</head>
<body style="background-color: #F5F5F5">
<jsp:include page="nav.jsp"/>

<div class="my-4" style="background-color: #F5F5F5">
    <div class="d-flex justify-content-around align-items-center">
        <%
            Employe employe = (Employe) request.getAttribute("employee");
            if (employe != null) {
        %>
        <% if (employe.getId() == session.getAttribute("id").hashCode()) { %>

        <div class="rounded d-flex justify-content-center align-items-center" style="width: 15%; background-color: white; height: 220px">
            <div>
                <div class="d-flex justify-content-center py-2">
                    <button type="submit" class="btn shadow px-1 fw-bold" style="background-color: #8387F5; color: #ffffff; width: 190px;">modifier</button>
                </div>
                <div class="d-flex justify-content-center py-2">
                    <button type="submit" class="btn shadow px-1 fw-bold" style="background-color: #C9CAF0; color: #8387F5; width: 190px;">le mot de passe</button>
                </div>
                <div class="d-flex justify-content-center py-2">
                    <button type="submit" class="btn shadow px-1 fw-bold" style="background-color: #F81010; color: #ffffff; width: 190px;">Déconnecte</button>
                </div>
            </div>
        </div>        <%}%>

        <div class="rounded d-flex justify-content-center align-items-center" style="width: 50%; background-color: white; height: 220px;">

            <% if (employe.getId() == session.getAttribute("id").hashCode()) { %>
            <div class="w-25">
                <div class="d-flex justify-content-center py-2">
                    <img width="100" height="100" src="images/n.jpg" class="rounded-circle me-2" alt="profil" />
                </div>
                <div class="mb-2 text-center">
                    <p class="fw-bolder"><%= employe.getUsername() %><br><span class="fw-normal"><%= employe.getPost().getLabel() %></span></p>
                </div>
            </div>
            <div class="w-25 px-2">
                <div class="mb-3">
                    <label class="form-label">Nom</label>
                    <input type="text" class="form-control border border-0 border-primary border-bottom" placeholder="" value="<%= employe.getNom() %>">
                </div>
                <div class="mb-3">
                    <label class="form-label">Prenom</label>
                    <input type="text" class="form-control border border-0 border-primary border-bottom" placeholder="" value="<%= employe.getPrenom() %>">
                </div>
            </div>
            <div class="w-50 px-4">
                <div class="mb-3">
                    <label class="form-label">Email address</label>
                    <input type="text" class="form-control border border-0 border-primary border-bottom" placeholder="" value="<%= employe.getEmail() %>">
                </div>
                <div class="mb-3">
                    <label class="form-label">Numero de telephone</label>
                    <input type="text" class="form-control border border-0 border-primary border-bottom" placeholder="" value="<%= employe.getTelephone() %>">
                </div>
            </div>
            <%
            } else {
            %>
            <div class="w-25">
                <div class="d-flex justify-content-center py-2">
                    <img width="100" height="100" src="images/n.jpg" class="rounded-circle me-2" alt="profil" />
                </div>
                <div class="mb-2 text-center">
                    <p class="fw-bolder"><%= employe.getUsername() %><br><span class="fw-normal"><%= employe.getPost().getLabel() %></span></p>
                </div>
            </div>
            <div class="w-25 px-2">
                <div class="mb-3">
                    <label class="form-label">Nom</label>
                    <input type="text" disabled class="form-control border border-0 border-primary border-bottom" placeholder="" value="<%= employe.getNom() %>">
                </div>
                <div class="mb-3">
                    <label class="form-label">Prenom</label>
                    <input type="text" disabled class="form-control border border-0 border-primary border-bottom" placeholder="" value="<%= employe.getPrenom() %>">
                </div>
            </div>
            <div class="w-50 px-4">
                <div class="mb-3">
                    <label class="form-label">Email address</label>
                    <input type="text" disabled class="form-control border border-0 border-primary border-bottom" id="" placeholder="" value="<%= employe.getEmail() %>">
                </div>
                <div class="mb-3">
                    <label class="form-label">Numero de telephone</label>
                    <input type="text" disabled class="form-control border border-0 border-primary border-bottom" placeholder="" value="<%= employe.getTelephone() %>">
                </div>
            </div>
            <%
                }}
            %>
        </div>
        <% if (employe.getId() == session.getAttribute("id").hashCode()) { %>
        <div class="rounded d-flex justify-content-center align-items-center" style="width: 20%; background-color: white; height: 220px">
            <div>
                <div class="d-flex justify-content-center py-2">
                    <img width="100" height="100" src="images/n.jpg" class="rounded-circle me-2" alt="profil" />
                </div>
                <div class="d-flex justify-content-center py-2">
                    <button type="submit" class="btn shadow px-1 fw-bold" style="background-color: #FFA9D4; color: #ffffff; width: 190px;">modifier profil</button>
                </div>
            </div>
        </div>
        <%}%>
    </div>
    <div class="m-4 d-flex justify-content-around align-items-center p-3 rounded shadow-sm" style="background-color: #83DBF3">
        <h6 class="text-white fw-semibold"> Department: Web Development</h6>
        <h6 class="text-white fw-semibold">Chef de Service: Aya Madrani</h6>
        <h6 class="text-white fw-semibold"> Department: Web Development</h6>
    </div>

    <div class="m-4" style="background-color: white">
        <table class="table">
            <thead>
            <tr>
                <th scope="col" style="width: 5%">#</th>
                <th scope="col" style="width: 40%">Description</th>
                <th scope="col" style="width: 15%">Deadline</th>
                <th scope="col" style="width: 10%">Priorité</th>
                <th scope="col" style="width: 10%">Statut</th>
            </tr>
            </thead>
            <tbody>
            <%
                List<Tache> tasks = (List<Tache>) request.getAttribute("tasks");
                if (tasks != null && !tasks.isEmpty()) {
                    for (Tache task : tasks) {
            %>
            <tr>
                <th scope="row">${loop.index + 1}</th>
                <td><%= task.getDescription() %></td>
                <td><%= task.getDeadline() %></td>
                <td>
                    <button type="button" class="btn btn-sm fw-medium shadow-sm"
                            style="background-color: <%= task.getPriorite().getColor() %>; color: <%= task.getPriorite().getTextColor() %>;">
                        <%= task.getPriorite().getLabel() %>
                    </button>
                </td>
                <td>
                    <select class="form-select form-select-sm fw-medium shadow-sm"
                            style="background-color: <%= task.getStatut().getColor() %>; color: <%= task.getStatut().getTextColor() %>;">
                        <option value="<%= task.getStatut().name() %>"><%= task.getStatut().getLabel() %></option>
                        <% for (StatutTache statut : StatutTache.values()) { %>
                        <% if (statut != task.getStatut()) { %>
                        <option value="<%= statut.name() %>"><%= statut.getLabel() %></option>
                        <% } %>
                        <% } %>
                    </select>
                </td>
            </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<%   } else {
    response.sendRedirect("login.jsp");
} %>
</body>
</html>
