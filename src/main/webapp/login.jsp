<%--
  Created by IntelliJ IDEA.
  User: Aluno
  Date: 04/05/2022
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Teste</title>
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
</body>
</html>
