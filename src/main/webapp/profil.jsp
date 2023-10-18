<%@ page import="com.example.demo5.model.Tache" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 15/10/2023
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body style="background-color: #F5F5F5">
<jsp:include page="nav.jsp"/>
<%----%>
<div  class="my-4" style="background-color: #F5F5F5">
<div class="d-flex justify-content-around align-items-center   ">
    <div class="rounded d-flex justify-content-center  align-items-center
" style="width: 15% ; background-color: white ; height: 220px">

       <div> <div class="d-flex justify-content-center py-2">
           <button type="submit" class="btn  shadow  px-1 fw-bold " style="background-color: #8387F5 ; color: #ffffff ;width: 190px ">modifier </button>
       </div>
           <div  class="d-flex justify-content-center py-2">
               <button type="submit" class="btn  shadow  px-1 fw-bold " style="background-color: #C9CAF0 ; color: #8387F5 ;width: 190px">le mot de passe</button>
           </div>
           <div  class="d-flex justify-content-center py-2">
               <button type="submit" class="btn  shadow  px-1 fw-bold " style="background-color: #F81010 ; color: #ffffff ;width: 190px">Déconnecte</button>
           </div></div>
    </div>
    <div class="rounded d-flex justify-content-center align-items-center" style="width: 50%; background-color: white; height: 220px;">
        <div class="w-25">
            <div class="d-flex justify-content-center py-2">
                <img width="100" height="100" src="images/n.jpg" class="rounded-circle me-2" alt="profil" />
            </div>
            <div class="mb-2 text-center">
                <p class="fw-bolder">  <%= session.getAttribute("employeeName") %> <br><span class="fw-normal">      <%= session.getAttribute("employeeJobTitle") %></span><p/>
            </div>
        </div>

        <div class="w-25 px-2">
            <div class="mb-3">
                <label  class="form-label">Nom</label>
                <input type="email" class="form-control  border border-0 border-primary border-bottom"  placeholder="" value="<%= session.getAttribute("nom") %>">
            </div>
            <div class="mb-3">
                <label  class="form-label">Prénom</label>
                <input type="email" class="form-control  border border-0 border-primary border-bottom" placeholder=""  value="<%= session.getAttribute("prenom") %>">
            </div>
        </div>

        <div class="w-50 px-4">
            <div class="mb-3">
                <label  class="form-label">Email address</label>
                <input type="email" class="form-control  border border-0 border-primary border-bottom" id="" placeholder="" value="<%= session.getAttribute("email") %>">
            </div>
            <div class="mb-3">
                <label  class="form-label">Numéro de téléphone</label>
                <input type="email" class="form-control  border border-0 border-primary border-bottom"  placeholder="" value="<%= session.getAttribute("telephone") %>">
            </div>
        </div>
    </div>

    <div  class="rounded d-flex justify-content-center  align-items-center" style="width: 20% ; background-color: white ; height: 220px">
        <div>

               <div class="d-flex justify-content-center py-2">
                   <img width="100" height="100" src="images/n.jpg" class="rounded-circle me-2" alt="profil"/>
               </div>
               <div  class="d-flex justify-content-center py-2">
                   <button type="submit" class="btn  shadow  px-1 fw-bold " style="background-color: #FFA9D4 ; color: #ffffff ;width: 190px">modifier profil </button>
               </div>

        </div>
    </div>

</div>
<%--    --%>

        <div class="m-4 d-flex justify-content-around align-items-center p-3 rounded shadow-sm" style="background-color: #83DBF3">
            <h6 class="text-white fw-semibold"> Department  : Web Development</h6>
            <h6  class="text-white fw-semibold">Chef de Service : Aya Madrani</h6>
            <h6  class="text-white fw-semibold"> Department  : Web Development</h6>

    </div>
<%--    --%>

    <!-- Add this code in profil.jsp to display the tasks -->
    <div class="m-4" style="background-color: white">
        <table class="table">
            <thead>
            <tr>
                <th scope="col" style="width:5%">#</th>
                <th scope="col" style="width:40%">Description</th>
                <th scope="col" style="width:15%">Deadline</th>
                <th scope="col" style="width:10%">Priorité</th>
                <th scope="col" style="width:10%">Statut</th>
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
                    >
                        <%= task.getPriorite().getLabel() %>
                    </button>
                </td>
                <td>
                    <button type="button" class="btn btn-sm fw-medium shadow-sm"
                    >
                        <%= task.getStatut().getLabel() %>
                    </button>
                </td>
            </tr>
            <%
                }}
            %>
            </tbody>
        </table>
    </div>

<%--    --%>











</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
