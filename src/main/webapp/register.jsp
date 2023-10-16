<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="m-0 p-0 overflow-hidden">
<div class="container-fluid">
    <div class="row d-flex justify-content-between h-100 pe-3">
        <div class="col-md-6 bg-black py-4">
            <a href="login.jsp" class="d-flex justify-content-end pe-4 fw-bold" style="color: #8387F5 ">Se connecter</a>
            <div class="d-flex justify-content-center">
                <div>
                    <h3 class="my-4">Register</h3>
                    <form action="register" method="post">
                        <div class="input-group mb-4">
                            <input type="text" class="form-control border border-0 border-bottom" placeholder="Nom d'utilisateur" name="username">
                        </div>
                        <div class="d-flex justify-content-end">
                            <div class="input-group mb-4">
                                <input type="text" class="form-control border border-0 border-bottom me-3" placeholder="Nom" name="nom">
                            </div>
                            <div class="input-group mb-4">
                                <input type="text" class="form-control border border-0 border-bottom ms-3" placeholder="Prénom" name="prenom">
                            </div>
                        </div>
                        <div class="input-group mb-4">
                            <input type="email" class="form-control border border-0 border-bottom" placeholder="Email: example@gmail.com" name="email">
                        </div>
                        <div class="input-group mb-4">
                            <input type="tel" id="telephone" name="telephone" placeholder="Saisissez votre numéro de téléphone" class="form-control border border-0 border-bottom" name="telephone">
                        </div>
                        <div class="d-flex justify-content-center">
                            <div class="input-group mb-4">
                                <input type="password" class="form-control border border-0 border-bottom me-3" placeholder="Mot de passe" name="password">
                            </div>
                            <div class="input-group mb-4">
                                <input type="password" class="form-control border border-0 border-bottom ms-3" placeholder="Confirmer le mot de passe" name="confirmPassword">
                            </div>
                        </div>
                        <select class="form-select mb-5 border border-0 border-bottom" aria-label="Default select example" name="post">
                            <option selected>Post</option>
                            <option value="CHEF_DE_DEPARTEMENT">Chef de Département</option>
                            <option value="DEVELOPPEUR">Développeur</option>
                            <option value="TECHNICIEN">Technicien</option>
                            <option value="DESIGNER">Designer</option>
                            <option value="ANALYSTE">Analyste</option>
                            <option value="TESTEUR">Testeur</option>
                            <option value="RESPONSABLE_PROJET">Responsable de Projet</option>
                        </select>
                        <div class="d-flex justify-content-center mb-5">
                            <button type="submit" class="btn  shadow  mb-5 px-3 fw-bold " style="background-color: #C9CAF0 ; color: #8387F5">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6 p-0">
            <img src="images/4261198.jpg" alt="Image Description" width="100%" height="100%">
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
