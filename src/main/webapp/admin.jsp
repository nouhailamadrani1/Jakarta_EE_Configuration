<%
    if (session.getAttribute("id").hashCode() == 4) {

%>
<%@ page import="com.example.demo5.entities.Employe" %>

<%@ page import="java.util.List" %>
<%@ page import="com.example.demo5.entities.Departement" %>
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
            <h5 class="mt-5 px-2 text-center">Action</h5>

            <ul class="px-2 mt-2 list-group list-group-flush">
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn text-white " data-bs-toggle="modal" data-bs-target="#ajouterDepartement" style=" background-color: #F9A8A7 ;width: 190px;">
                        Ajouter département
                    </button>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <!-- Button trigger modal -->
                    <button type="button " class="btn text-white  " data-bs-toggle="modal" data-bs-target="#ajouterEquipement" style=" background-color: #83DBF3 ;width: 190px;">
                        Ajouter équipement
                    </button>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                <!-- Button trigger modal -->
                <button type="button" class="btn text-white " data-bs-toggle="modal" data-bs-target="#mumberDepartment" style="background-color: #FFA9D4; width: 190px; ">
                    Ajouter membre
                </button>
                </li>
            </ul>
        </div>
        <div class="col-md-10">
            <!-- Your existing content here -->
            <jsp:include page="nav.jsp"/>

            <div class="pb-3 y-2" style="background-color: #F5F5F5">
                <h3 class="text-center p-3">Bienvenue dans tableau de bord <b style="color: #8387F5">Admin !!</b> </h3>
                <h5 class="px-3 py-4">Statistiques</h5>

                <div class="d-flex justify-content-evenly py-2">
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #FFA9D4 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #83DBF3 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #F9A8A7 "> </div>

                </div>

                <div>
                    <h5 class="px-3 py-4">Department</h5>

                    <table class="table" style="width: 100%">
                        <thead style="width: 100%">
                        <tr style="width: 100%">
                            <th scope="col" style="width: 10%;">#</th>
                            <th scope="col"  style="width: 10%;">Nom</th>
                            <th scope="col" style="width: 10%;" >chef DD</th>
                            <th scope="col" style="width: 30%;">Description</th>
                            <th scope="col" class="text-center" style="width: 40%;" >Action</th>
                        </tr>
                        </thead>
                        <tbody class="table-group-divider">
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>nouha</td>
                            <td>nouha</td>
                            <td class="text-center"><form>
                                <button type="submit" class="btn shadow px-1 fw-bold btn-sm" style="background-color: #F81010; color: #ffffff; ">Delete</button>
                            </form>
                                <form>    <button type="submit" class="btn shadow px-1 fw-bold btn-sm" style="background-color: #75C80C; color: #ffffff;">Update</button>
                                </form>
                            </td>
                        </tr>


                        </tbody>
                    </table>
                </div>
                <div>
                    <h5 class="px-3 py-4">Eequipment</h5>

                    <table class="table" style="width: 100%">
                        <thead style="width: 100%">
                        <tr style="width: 100%">
                            <th scope="col" style="width: 10%;">#</th>
                            <th scope="col"  style="width: 10%;">Nom</th>
                            <th scope="col" style="width: 10%;">Etat</th>
                            <th scope="col" style="width: 10%;">Type</th>
                            <th scope="col" style="width: 20%;" >Date Achat</th>
                            <th scope="col" class="text-center"  style="width: 40%;" >Action</th>
                        </tr>
                        </thead>
                        <tbody class="table-group-divider">
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>nouha</td>
                            <td>nouha</td>
                            <td>nouha</td>
                            <td class="text-center"><form>
                                <button type="submit" class="btn shadow px-1 fw-bold btn-sm" style="background-color: #F81010; color: #ffffff;">Delete</button>

                            </form>
                                <form>    <button type="submit" class="btn shadow px-1 fw-bold btn-sm" style="background-color: #75C80C; color: #ffffff;">Update</button>
                                </form>
                            </td>
                        </tr>


                        </tbody>
                    </table>
                </div>
            </div>
            <!-- Modal for Ajouter Departement -->
            <div class="modal fade" id="ajouterDepartement" tabindex="-1" aria-labelledby="ajouterDepartement" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title fs-5" id="ajouter_Departement">Ajouter Département</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form method="post" action="department">
                                <input type="hidden" name="action" value="add">
                                <label for="nom">Nom du département:</label>
                                <input type="text" id="nom" name="nom" class="form-control border border-0 border-bottom ">
                                <label for="description">Description:</label>
                                <textarea id="description" name="description" class="form-control border border-0 border-bottom "></textarea>
                                <!-- Add chef information here -->
                                <label for="">chef du Departement:</label>

                                <select id="chef" name="chef" class="form-select" >
                                    <%
                                        List<Employe> employees = (List<Employe>) request.getAttribute("employees");
                                        for (Employe employee : employees) {
                                    %>
                                    <option value="<%= employee.getId() %>">
                                        <%= employee.getNom() + " " + employee.getPrenom() %>
                                    </option>
                                    <%
                                        }
                                    %>
                                </select>
                                <div class="modal-footer">
                                    <button type="submit" class="btn text-white " style=" background-color: #F9A8A7">Ajouter</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Modal for Ajouter Equipement -->
            <div class="modal fade" id="ajouterEquipement" tabindex="-1" aria-labelledby="ajouterEquipement" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title fs-5" id="ajouter_Equipement">Ajouter Équipement</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <!-- Add form elements for creating a new equipment -->
                            <form action="equipements" method="post">
                                <input type="hidden" name="action"  class="form-control border border-0 border-bottom " value="add">
                                <label for="nomEquipement">Name:</label>
                                <input type="text" name="nomEquipement" class="form-control border border-0 border-bottom" id="nomEquipement" required>
                                <label >Type:</label>
                                <input type="text" name="type"  class="form-control border border-0 border-bottom " required>
                                <label >Purchase Date:</label>
                                <input type="date" name="dateAchat" class="form-control border border-0 border-bottom " required>
                                <label >Maintenance Date:</label>
                                <input type="date" name="dateMaintenance" class="form-control border border-0 border-bottom " required>
                                <label >State:</label>
                                <select class="form-select border border-0 border-bottom"   name="etat">
                                    <option value="EN_SERVICE">In Service</option>
                                    <option value="DISPONIBLE">Available</option>
                                    <option value="MAINTENANCE">Maintenance</option>
                                </select>
                                <div class="modal-footer">
                                    <button type="submit" class="btn text-white" style="background-color: #83DBF3 ">Add Equipment</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal fade" id="mumberDepartment" tabindex="-1" aria-labelledby="mumberDepartment" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="">Member Department</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form method="post" action="EmployeeToDepartment" class="mt-4 px-3">
                                <label for="employeeId">Select an Employee:</label>
                                <select id="employeeId" name="employeeId" class="form-select border border-0 border-bottom" >
                                    <%
                                        List<Employe> employes = (List<Employe>) request.getAttribute("employees");
                                        for (Employe employee : employes) {
                                    %>
                                    <option value="<%= employee.getId() %>"><%= employee.getPrenom() %></option>
                                    <%
                                        }
                                    %>
                                </select>
                                <label for="departmentId">Select a Department:</label>
                                <select id="departmentId" name="departmentId" class="form-select border border-0 border-bottom" >
                                    <%
                                        List<Departement> departments = (List<Departement>) request.getAttribute("departments");
                                        for (Departement department : departments) {
                                    %>
                                    <option value="<%= department.getId() %>"><%= department.getNom() %></option>
                                    <%
                                        }
                                    %>
                                </select>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="submit" class="btn text-white" style="background-color: #FFA9D4;">ajouter member</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
<%   }else {
    response.sendRedirect("login.jsp");
}%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
