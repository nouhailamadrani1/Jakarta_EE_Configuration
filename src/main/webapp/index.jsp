<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Gestion des Utilisateurs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
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
<div class="container mt-5">
    <div class="project-heading">
        <img src="your-image-url.jpg" alt="Project Image" class="img-fluid" style="max-width: 200px;">
        <h1>Gestion des Utilisateurs</h1>
    </div>

    <div class="project-description">
        <p class="lead">Bienvenue dans notre système de gestion avancée. Notre projet comprend les fonctionnalités suivantes :</p>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">Authentification et Autorisation</h5>
                    <p class="card-text">
                        Mise en place d'un système d'authentification et d'autorisation pour les utilisateurs. Permet aux utilisateurs de créer un compte, de se connecter et de gérer leur profil, y compris la modification des informations et le changement de mot de passe.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">Gestion des Allocations</h5>
                    <p class="card-text">
                        Autorisation du personnel à réserver des équipements et des ressources humaines à affecter des tâches en fonction de la disponibilité. Permet aux utilisateurs de rechercher des équipements en fonction de critères variés comme le type, la disponibilité, etc. En prime, un système de notification en cas d'abandon d'allocation d'un équipement souhaité.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">Gestion des Pannes</h5>
                    <p class="card-text">
                        Permet au personnel de signaler les pannes des équipements et autres problèmes, avec notification à l'administrateur. Un rôle de technicien peut être ajouté pour la résolution des problèmes et remontée à l'administrateur pour confirmation.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="text-center">
        <button type="button" class="btn shadow mb-5 px-4 fw-bold" style="background-color: #343a40; color: #ffffff">
            <a href="register.jsp" class="text-decoration-none" style="color: #ffffff">S'Inscrire</a>
        </button>
        <button type="button" class="btn shadow mb-5 px-4 fw-bold" style="background-color: #343a40; color: #ffffff">
            <a href="login.jsp" class="text-decoration-none" style="color: #ffffff">Se Connecter</a>
        </button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
