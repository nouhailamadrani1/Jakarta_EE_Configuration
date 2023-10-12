<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Employee</title>
</head>
<body>
<h1>Create Employee</h1>

<form action="/create-employee" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>

    <label for="nom">Nom:</label>
    <input type="text" id="nom" name="nom" required><br><br>

    <label for="prenom">Prenom:</label>
    <input type="text" id="prenom" name="prenom" required><br><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br><br>

    <label for="poste">Poste:</label>
    <input type="text" id="poste" name="poste" required><br><br>

    <label for="dateEmbauche">Date Embauche:</label>
    <input type="date" id="dateEmbauche" name="dateEmbauche" required><br><br>

    <button type="submit">Create Employee</button>
</form>
</body>
</html>