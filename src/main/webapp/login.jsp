<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Se connecter</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="m-0 p-0 overflow-hidden">

<div class="container-fluid">
    <div class="row d-flex justify-content-between h-100 pe-3">
        <div class="col-md-6 bg-black py-4">
            <a href="register.jsp" class="d-flex justify-content-end pe-4 fw-bold" style="color: #8387F5">Register</a>
            <div class="d-flex justify-content-center w-100">
                <div class="w-50">
                    <h4 class="my-5">Se connecter</h4>
                    <form action="login" method="post">
                        <div class="input-group mb-3">
                            <input type="email" class="form-control border border-0 border-bottom" placeholder="Email: example@gmail.com" name="email">
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control border border-0 border-bottom" placeholder="Mot de passe" name="password">
                        </div>
                        <div class="d-flex justify-content-center my-5">
                            <button type="submit" class="btn shadow mb-5 px-3 fw-bold" style="background-color: #C9CAF0; color: #8387F5">Se connecter</button>
                        </div>
                    </form>
                    <% String errorMessage = (String) request.getAttribute("errorMessage");
                        if (errorMessage != null && !errorMessage.isEmpty()) { %>
                    <div class="alert alert-danger" role="alert">
                        <%= errorMessage %>
                    </div>
                    <% } %>
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