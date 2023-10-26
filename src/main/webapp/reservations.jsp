<%@ page import="com.example.demo5.entities.EmployeEquipement" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Vos réservations</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #F5F5F5">
<div class="w-100" style="background-color: white"><a class="fst-italic fs-3 p-2 text-center text-decoration-none" href="#" style="color: #C9CAF0; ">
  <span class="text-dark">Resourcium</span>Optima
</a></div>
<%@ include file="nav.jsp" %>

<div style="background-color: #C9CAF0" class="m-3 p-1 d-flex align-items-center  justify-content-center rounded-2 rounded ">
  <div class="w-100">
    <% String errorMessage = (String) request.getAttribute("errorMessage");
      if (errorMessage != null && !errorMessage.isEmpty()) { %>
    <div class="alert alert-danger" role="alert">
      <%= errorMessage %>
    </div>
    <% } %>
    <h5 class="text-center m-1">Vos réservations :</h5>

    <%
      List<EmployeEquipement> reservations = (List<EmployeEquipement>) request.getAttribute("reservations");
      for (EmployeEquipement reservation : reservations) {
    %>
    <div class="p-2 m-2 d-flex justify-content-around rounded" style="background-color: white">
      <div class="p-2 px-3 rounded fw-bold">Nom : <%= reservation.getEquipement().getNom() %></div>
      <div class="p-2 rounded fw-bold">Etat :
        <button class="btn" style="background-color: rgba(187, 250, 107, 0.55); color: #75C80C;">
          <%= reservation.getEquipement().getEtat() %>
        </button>
      </div>
      <div class="p-2 rounded fw-bold">Type : <%= reservation.getEquipement().getType() %></div>
      <div class="p-2 rounded fw-bold">
        <form method="post" action="cancel-reservation">
          <input type="hidden" name="equipementId" value="<%= reservation.getEquipement().getId() %>">
          <button type="submit" class="btn px-2"  style="color: #F81010; background-color: rgba(248, 16, 16, 0.15)">Annuler la réservation</button>
        </form>
      </div>
    </div>
    <%
      }
    %>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>