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


<html lang="pt-br"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.98.0">
    <title>Signin Template · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">





    <link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#712cf9">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
</head>
<body class="text-center">

<main class="form-signin w-100 m-auto">
    <form>
        <img class="mb-4" src="/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
        <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

        <div class="form-floating">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Email address</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
        </div>

        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
        <p class="mt-5 mb-3 text-muted">© 2017–2022</p>
    </form>
</main>





</body>
</html>





<%--<!doctype html>--%>
<%--<html lang="pt-br">--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--    <title>Tela de Login</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">--%>
<%--</head>--%>
<%--<body>--%>

<%--<nav class="navbar bg-light">--%>
<%--    <div class="container-fluid">--%>
<%--        <a class="navbar-brand" href="controlador?opcao=inicio">--%>
<%--            <img src="/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">--%>
<%--            HardwareHere--%>
<%--        </a>--%>
<%--    </div>--%>
<%--</nav>--%>

<%--&lt;%&ndash;<form action="login" method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <label for="email" id="email"><b>Email: </b></label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text"&ndash;%&gt;--%>
<%--&lt;%&ndash;           placeholder="email"&ndash;%&gt;--%>
<%--&lt;%&ndash;           name="email" required>&ndash;%&gt;--%>
<%--    <form action="login" method="post" class="container-sm">--%>
<%--        <div class="row mb-3">--%>
<%--            <label for="email" class="col-sm-2 col-form-label" id="email">Email: </label>--%>

<%--                <input type="email" class="form-control" name="email" required>--%>

<%--        </div>--%>
<%--        <div class="row mb-3">--%>
<%--            <label for="senha" class="col-sm-2 col-form-label" id="senha">Senha: </label>--%>

<%--                <input type="password" class="form-control"  name="senha" required>--%>

<%--        </div>--%>
<%--        <button type="submit" value="Login" name="login" class="btn btn-primary">Login</button>--%>
<%--        <a href="controlador?opcao=cadastro"><button type="button", class="btn btn-primary" name="cadastro">Cadastre-se aqui !!!</button></a>--%>
<%--    </form>--%>






<%--&lt;%&ndash;    <label for="senha" id="senha"><b>Senha: </b></label>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <input type="password"&ndash;%&gt;--%>
<%--&lt;%&ndash;           placeholder="senha"&ndash;%&gt;--%>
<%--&lt;%&ndash;           name="senha" required>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <input type="submit" value="Login" name="login">&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>



<%--<c:if test="${not empty erro}">--%>
<%--    <h2>--%>
<%--        <b>${erro}</b>--%>
<%--    </h2>--%>
<%--</c:if>--%>


<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>

