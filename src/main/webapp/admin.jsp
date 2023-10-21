<%@ page import="com.example.demo5.entities.Employe" %>
<%@ page import="java.util.List" %>
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
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ajouterDepartement">
                        Ajouter département
                    </button>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ajouterEquipement">
                        Ajouter équipement
                    </button>
                </li>
            </ul>
        </div>
        <div class="col-md-10">
            <!-- Your existing content here -->
            <jsp:include page="nav.jsp"/>

            <div class="pb-3" style="background-color: #F5F5F5">
                <h5 class="px-3 py-4">Statistiques</h5>

                <div class="d-flex justify-content-evenly py-2">
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #FFA9D4 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #83DBF3 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #F9A8A7 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #D6A9FE "> </div>
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
                            <!-- Add form elements for creating a new department -->
                            <form method="post" action="department">
                                <input type="hidden" name="action" value="add">
                                <label for="nom">Nom du département:</label>
                                <input type="text" id="nom" name="nom" class="form-control">
                                <label for="description">Description:</label>
                                <textarea id="description" name="description" class="form-control"></textarea>
                                <!-- Add chef information here -->
                                <select id="chef" name="chef" class="form-control">
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

                                <button type="submit" class="btn btn-primary">Ajouter</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
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
                                <input type="hidden" name="action" value="add">
                                <label for="nomEquipement">Name:</label>
                                <input type="text" name="nomEquipement" id="nomEquipement" required>
                                <label for="type">Type:</label>
                                <input type="text" name="type" required>
                                <label for="dateAchat">Purchase Date:</label>
                                <input type="date" name="dateAchat" required>
                                <label for="dateMaintenance">Maintenance Date:</label>
                                <input type="date" name="dateMaintenance" required>
                                <label for="etat">State:</label>
                                <select name="etat">
                                    <option value="EN_SERVICE">In Service</option>
                                    <option value="DISPONIBLE">Available</option>
                                    <option value="MAINTENANCE">Maintenance</option>
                                </select>
                                <button type="submit">Add Equipment</button>
                            </form>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
