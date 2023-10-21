<%@ page import="com.example.demo5.entities.Employe" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo5.entities.Post" %><%--
  Created by IntelliJ IDEA.
  User: youcode
  Date: 15/10/2023
  Time: 01:18
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
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
            <a class=" fst-italic fs-3 mt-2 mx-2 d-flex   align-items-center text-decoration-none" href="#"  style="color: #C9CAF0; "><span class="text-dark">Resourcium</span>Optima</a>
            <h5 class="mt-5 px-2">Filter</h5>
            <h6 class="mt-3 px-2">Profession</h6>
            <ul class="px-2 mt-2 list-group list-group-flush">
                <%
                    for (Post post : Post.values()) {
                %>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="<%= post.name() %>" id="<%= post.name() %>Checkbox">
                        <label class="form-check-label" for="<%= post.name() %>Checkbox"><%= post.getLabel() %></label>
                    </div>
                    <span class="badge rounded-pill" style="background-color: #C9CAF0; color: #8387F5">12</span>
                </li>
                <%
                    }
                %>
            </ul>

        </div>
        <div class="col-md-10">

            <jsp:include page="nav.jsp"/>

            <div class="pb-3" style="background-color: #F5F5F5">
                <h5 class="px-3 py-4">Statistiques</h5>

                <div class="d-flex justify-content-evenly py-2">
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #FFA9D4 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #83DBF3 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #F9A8A7 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #D6A9FE "> </div>
                </div>
                    <div class="px-3 ">
                        <h5 class="py-4">Employés</h5>
                        <div class="d-flex justify-content-evenly flex-wrap mb-2 my-3">
                            <%
                                List<Employe> employees = (List<Employe>) request.getAttribute("employees");
                                for (Employe employee : employees) {
                            %>
                            <div class="rounded-4 shadow-sm m-2" style="height: 210px; width: 300px; background-color: #ffffff">
                                <div class="d-flex align-items-center justify-content-center p-3 m-0" height="50px">
                                    <img src="images/n.jpg" class="rounded-circle me-2" alt="profil" width="50px" height="50px">
                                    <div class="me-2" height="50px">
                                        <p class="fw-light" style="font-size: 12px;">
                                            <img width="17" height="17" src="https://img.icons8.com/material-rounded/24/phone--v1.png"
                                                 alt="phone--v1" class="mx-1"/> <%= employee.getTelephone() %> <br>
                                            <span class="fw-light" style="font-size: 12px;">
                            <img width="17" height="17" src="https://img.icons8.com/ios-filled/50/email.png"
                                 alt="email" class="mx-1" /><%= employee.getEmail() %>
                        </span>
                                        </p>
                                    </div>
                                </div>
                                <h6 class="px-3 m-0"><%= employee.getPrenom() + " " + employee.getNom() %></h6>
                                <p class="px-3 m-0 text-black-50"><%= employee.getPost().getLabel() %></p>
                                <div class="d-flex justify-content-center my-2">
                                    <form action="profilEmploye" method="post">
                                        <input type="hidden" value="<%= employee.getId() %>" name="idEmployee">
                                    <button type="submit" class="btn shadow px-3" style="background-color:#8387F5; color:#ffffff" >show all task employe</button>
                                    </form>
                                </div>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>