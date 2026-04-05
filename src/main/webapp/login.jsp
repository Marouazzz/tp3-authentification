<%--
  Created by IntelliJ IDEA.
  User: OMEN
  Date: 01/04/2026
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>PAGE D'AUTHENTIFICATION</title>
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow">
                <div class="card-header text-center"><h2>PAGE D AUTHENTIFICATION</h2> </div>
                <div class="card-body">
                    <form action="UserServlet" method="post" class="text-center">
                        <div class="mb-3">
                            Username: <input type="text" name="username"><br> </div>
                        <div class="mb-3">
                            Password: <input type="password" name="password"></div>
                        <div class="mb-3">

                            <button type="submit" class="btn btn-success">Login</button>
                        <button class="btn btn-info"><a href="inscription.jsp">Créer un compte</a></button></div>
                    </form>
                </div></div></div></div></div>
<p class="text-danger mt-3 text-center">
    ${error}
</p>
</body>
</html>
