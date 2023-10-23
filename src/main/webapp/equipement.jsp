<%@ page import="com.example.demo5.entities.Equipement" %>
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

<div style="background-color: #C9CAF0"  class=" m-3 p-1 d-flex align-items-center  justify-content-center rounded-2 rounded ">
    <div class="w-100" >
        <h5 class="text-center m-1  ">Vos réservations : </h5>
        <div class="p-2 m-2 d-flex justify-content-around rounded   " style="background-color: white">
            <div class="p-2 px-3 rounded fw-bold" >  Nom : Portable HP</div>
            <div class="p-2 rounded fw-bold" >Etat : <button class="btn" style="background-color: rgba(187, 250, 107, 0.55); color: #75C80C;">En service</button> </div>
            <div  class="p-2 rounded fw-bold">Type : Laptop professionnel</div>
            <div  class="p-2 rounded fw-bold"> <button class="btn px-2"  style="color: #F81010 ; background-color: rgba(248, 16, 16, 0.15)">Annuler la réservation</button> </div>

        </div>
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
    <h5 class="text-center my-3">Équipements</h5>
    <div class="d-flex justify-content-center flex-wrap ">
        <%
            List<Equipement> equipementList = (List<Equipement>) request.getAttribute("equipmentList");
            for (Equipement equipment  : equipementList) {
        %>
            <div class="rounded-4 shadow-sm m-1 d-flex justify-content-center align-items-center"
                 style="height: 210px; width: 300px; background-color: #ffffff">
                <div class="fw-bolder text-start">
                    <h6>Nom : <%=equipment.getNom()%></h6>
                    <h6>Etat : <span style="color: ${equipment.etat.getCouleurTexte()}"><%=equipment.getEtat().getNom()%></span></h6>
                    <h6>Type : <%=equipment.getType()%></h6>
                    <div class="d-flex justify-content-center my-1">
                        <button class="btn px-2 mx-1" style="color: #8387F5; background-color: #C9CAF0">Plus de détails</button>
                        <button class="btn px-2 mx-1" style="color: #ffffff; background-color: #F81010">Réserve</button>
                    </div>
                </div>
            </div>
        <%
            }
        %>
    </div>
    </div>


<%   }else {
    response.sendRedirect("login.jsp");
}%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
