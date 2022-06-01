<%--
  Created by IntelliJ IDEA.
  User: Aluno
  Date: 20/05/2022
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cadastro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

<h1>Cadastro Usuário</h1>

<form action="cadastro" method="post" >
    <div class="mb-3">
        <label class="form-label" for="exampleInputnome" >Nome:</label>
        <input type="text" class="form-control" id="exampleInputnome" aria-describedby="nomeHelp" name="nomecadastro" required>
        <div id="nomeHelp" class="form-text">Digite aqui o nome.</div>
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email:</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="emailcadastro" required>
        <div id="emailHelp" class="form-text">Nunca compartilharemos seu e-mail com mais ninguém.</div>
    </div>
    <div class="row g-3 align-items-center">
        <div class="col-auto">
            <label for="inputPassword6" class="col-form-label">Senha:</label>
            <input type="password" id="inputPassword6" class="form-control" aria-describedby="passwordHelpInline" name="senhacadastro" required>
            <span id="passwordHelpInline" class="form-text">
             Deve ter de 3 a 20 caracteres.
            </span>
        </div>
    </div>
    <input type="submit" value="CADASTRAR" name="cadastro">

    <a href="controlador?opcao=voltar"> <input type="button" value="VOLTAR"/></a>
</form>

<c:if test="${not empty erro}">
    <h2>
        <b>${erro}</b>
    </h2>
</c:if>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>