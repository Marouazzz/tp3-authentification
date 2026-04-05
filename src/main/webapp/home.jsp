
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="model.User" %>
<%@page import="model.Role" %>
<%
    User user = (User) session.getAttribute("user");
%>
<html>
<head>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>HOME</title>
</head>
<body>
<h1>BIENVENUE  <%= user.getUsername() %> DANS VOTRE PAGE HOME</h1>
<%
    if (user.getRole() == Role.ADMIN) {
%>
<p>Vous êtes ADMIN</p>
<%
} else {
%>
<p>Vous êtes un simple utilisateur </p>
<%
    }
%>
<form action="DeconnServlet" method="get">
    <button type="submit" class="btn btn-danger">Se déconnecter</button>
</form>
</body>
</html>
