<%@ page import="com.example.demo5.entities.Departement" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 18/10/2023
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>

<%

    if (session.getAttribute("id")!= null) {


%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body style="background-color: #F5F5F5">
<div class="w-100" style="background-color: white"><a class="fst-italic fs-3 p-2 text-center text-decoration-none" href="#" style="color: #C9CAF0; ">
    <span class="text-dark ">Resourcium</span>Optima
</a></div>
<jsp:include page="nav.jsp"/>
<h5 class="text-center  my-3">Votre Départment </h5>
<div class="d-flex justify-content-center my-3  rounded" >

    <div class="p-3 m-2 d-flex justify-content-around rounded  w-75" style="background-color: rgba(131, 219, 243, 0.33)">
        <div class="p-2 px-3 rounded-pill fw-bold" style="color: #8387F5"> Department  : Web Development</div>
        <div class="p-2 rounded-pill fw-bold" style="background-color: #F5F5F5 ; color: #8387F5">Chef de Service : Aya Madrani</div>
        <div  class="p-2 rounded-pill fw-bold" style="color: #F81010 ; background-color: rgba(248, 16, 16, 0.15)">Effectif du Département  : 12</div>
    </div>
</div>
<h5 class="my-3 text-center">Recherche</h5>
<div class=" p-2 mx-5  d-flex justify-content-center rounded " >

    <form class=" d-flex justify-content-center w-75 p-3 m-2  " style="background-color: white">
        <input class="form-control  border border-0 border-primary border-bottom  px-2 mx-1" placeholder="Recherche par nom de département ou chef de service..."  />
        <button type="submit" class="btn  shadow  px-2 fw-bold mx-1 " style="background-color: rgba(131, 135, 245, 0.34) ; color: rgb(131, 135, 245) ;width: 190px">recherche</button>

    </form>

</div>

<div class="px-3 ">
    <h5 class="text-center my-3">Départements</h5>
    <div class="d-flex justify-content-center flex-wrap ">
        <%
            List<Departement> departementList= (List<Departement>) request.getAttribute("departementList");
            for (Departement departement  : departementList) {
        %>
        <div class="rounded-4 shadow-sm m-2 d-flex align-items-center" style="height: 210px; width: 300px; background-color: #ffffff">
            <div class="text-start">
                <div class="m-1 p-1 fw-bolder ">
                    <img width="24" height="24" src="https://img.icons8.com/ios/24/department.png" alt="department" />
                    <span class=""> Department : <%=departement.getNom()%></span>
                </div>
                <div class="m-1 p-1 fw-bolder  ">
                    <img width="24" height="24" src="https://img.icons8.com/ios/24/businessman.png" alt="businessman" />
                    <span class=""> Chef de Service : <%=departement.getChef().getUsername()%></span>
                </div>
<%--                <div class="m-1 p-1 fw-bolder  ">--%>
<%--                    <img width="24" height="24" src="https://img.icons8.com/ios/24/groups.png" alt="groups" />--%>
<%--                    <span class=""> Effectif du Département : </<%=departement.count()%>span>--%>
<%--                </div>--%>
                <div class="d-flex justify-content-center">
                    <button type="submit" class="btn shadow px-3 mt-2" style="background-color:#8387F5; color:#ffffff">Plus de détails</button>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>


</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<%   }else {
    response.sendRedirect("login.jsp");
}%>
</body>
</html>
