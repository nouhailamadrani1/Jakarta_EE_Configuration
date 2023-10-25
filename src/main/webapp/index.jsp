<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Gestion des Utilisateurs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url("images/6896179.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }
        .project-heading {
            text-align: center;
            padding: 50px 0;
        }
        .project-description {
            text-align: center;
            margin-bottom: 50px;
        }
        .card {
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 5px;
        }
    </style>
</head>
<body>

<nav class=" " style=" color: white">
    <div class=" d-flex align-items-center justify-content-around py-2 ">
        <a class="fst-italic fs-3   text-decoration-none" href="#" style="color: #C9CAF0;">
            <span class="text-white">Resourcium</span>Optima
        </a>

            <div class="d-flex justify-content-between   ">
                    <a class="mx-4  text-white fw-bolder text-decoration-none" aria-current="page" href="index.jsp">Accueil</a>
                    <a class="mx-4 text-decoration-none text-white fw-bolder" href="">A propos de nous</a>

                    <a class="mx-4 text-decoration-none text-white fw-bolder" href="">contactez-nous</a>




            </div>


    </div>
</nav>
<div class="container mt-5">
    <div class="project-heading">

        <h2 class="text-white">Resourcium Optima</h2>
        <p class="text-white-50" >Sur notre site de Gestion des Utilisateurs, vous pouvez créer des comptes, vous connecter et gérer vos profils. Nous avons également des rôles d'application.

            Dans la section Gestion des Allocations, réservez des équipements, attribuez des tâches et recherchez des équipements avec des notifications pour les abandons.

            En ce qui concerne la Gestion des Pannes, signalez les problèmes, avec des notifications pour l'administrateur, et un rôle de technicien pour les résoudre. Une gestion efficace à portée de main.</p>
    </div>


    </div>

    <div class="text-center">
        <button type="button" class="btn shadow-lg px-3 fw-bold" style="background-color: #C9CAF0; color: #8387F5">
            <a href="register.jsp" class="text-decoration-none" style="color: #ffffff">S'Inscrire</a>
        </button>
        <button type="button" class="btn shadow-lg  px-3 fw-bold" style="background-color: #C9CAF0; color: #8387F5">
            <a href="login.jsp" class="text-decoration-none" style="color: #ffffff">Se Connecter</a>
        </button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
