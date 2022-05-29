<%--
  Created by IntelliJ IDEA.
  User: Aluno
  Date: 04/05/2022
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"%>
<html>
    <head>
        <title>Tela de Login</title>
    </head>
    <body>
        <h1>LOGAR NO SISTEMA</h1>
        <form action="login" method="post">
            <label for="email" id="email"><b>Login</b></label>
            <input type="text"
                   placeholder="email"
                   name="email" required>
            <br>
            <br>
            <label for="senha" id="senha"><b>Senha</b></label>

            <input type="password"
                   placeholder="senha"
                   name="senha" required>

            <input type="submit" value="Login" name="login">
        </form>

        <a href="controlador?opcao=cadastro"><input type="button" value="Cadastre sua conta aqui."/></a>

        <c:if test="${not empty erro}">
            <h2>
                <b>${erro}</b>
            </h2>
        </c:if>

    </body>
</html>
