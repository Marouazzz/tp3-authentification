<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>INSCRIPTION</title>
</head>
<body>


<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow">
                <div class="card-header text-center"><h2>PAGE D'INSCRIPTION</h2></div>
                <div class="card-body">
                    <form action="InscriptionServlet" method="post"class="text-center">
                        <div class="mb-3">
                            Username: <input type="text" name="username"><br></div>
                        <div class="mb-3">
                            Password: <input type="password" name="password"><br></div>
                        <div class="mb-3">

                        Rôle :
                        <select name="role">
                            <option value="ADMIN">ADMIN</option>
                            <option value="ETUDIANT">ETUDIANT</option>
                        </select><br>
                        </div>
                        <div class="mb-3">
                        <button type="submit" class="btn btn-success"><a href="login.jsp"></a>S'inscrire</button>
                        <button class="btn btn-info"><a href="login.jsp">Se connecter </a></button>
                        </div>
                    </form>
                </div> </div>
        </div>
    </div>
</div>
<p class="text-danger mt-3 text-center">
    ${error}
</p>
</body>
</html>
