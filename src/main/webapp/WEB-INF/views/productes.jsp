<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ca">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Botiga online de productes de proximitat Bio">
    <link rel="icon" href="favicon.png" type="image/png" sizes="32x32">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--LINK A CSS-->
    <link rel="stylesheet" type="text/css" href="">
    <!-- Bootstrap4-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--GOOGLE FONTS-->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC|Baloo+Bhai|Dancing+Script|Fascinate|Indie+Flower|Roboto|Modak|Pacifico|Shadows+Into+Light+Two&display=swap" rel="stylesheet">
    <title>BotigaBio</title>
    <!-- SCRIPT FONT-AWESOME, JQUERY, BOOTSTRAP-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/02893b0cef.js" crossorigin="anonymous"></script>
    <!--CSS-->
    <style>
        nav, footer{
            font-family:Baloo Bhai; 
        }
        .navbar-brand {
            margin: auto;
            display: block;
        }

        .logo {
            height: auto;
            width: auto;
            max-height: 72px;
            max-width: 250px;
        }


        .input-group {
            width: 375px
        }

        li {
            font-size: 18px;
        }

        .container2 li.nav-item {
            width: 20%;
            border-left: solid grey 1px;
            text-align: center;

        }

        .container2 a.nav-link {
            color: white
        }

        .container2 li.nav-item:hover {
            background-color: forestgreen
        }

        body {
            background-color: white;
            font-family: Roboto;
        }

        .container2 {
            background-color: mediumseagreen;
                
        }

        footer {
            background-color: midnightblue;
            color: lightgrey
        }

        form.p-4 {
            color: white;
            background-color: mediumseagreen
        }

        div.col-md-12.py-5 {
            background-color: midnightblue;
            color: white
        }
       
        button.btn.btn-default {
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
            background-color: mediumseagreen;
            color:white

        }
        .container{
            font-family: Roboto;
        }
    </style>
</head>

<body>
    
    <!--BARRA NAVEGADOR-->
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
        <div class="container-fluid">
            <!--LOGOTIPO-->
            <a class="navbar-brand" href="<c:url value="/"/>">   
                <img class="logo" alt="logotip botigabio" src="<spring:url value="/resources/img/botigabio.png"/>">
            </a>
            <!--BUSCADOR-->
            <div class="input-group md-form form-sm form-2 ml-2 mr-2">
                <input class="form-control my-0 py-1 lime-border" type="text" placeholder="Busca productes" aria-label="Search">
                
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="fas fa-search" aria-hidden="true"></span></button>
                </span>
            </div>
            <!--BOTÓN TOGGLER PARA PANTALLAS MAS PEQUEÑAS-->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#barraNavegacion" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse my-2" id="barraNavegacion">

                <ul class="navbar-nav ml-auto">

                    <li class="nav-item">
                        <div class="btn-group">
                            <button type="button" class="btn  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Productes</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="<c:url value="/verdura"/>">Verdures</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/fruitsec"/>">Fruits secs</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/fruita"/>">Fruita</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/peix"/>">Peix</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/carn"/>">Carn</a>
                            </div>
                        </div>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="#">Proveïdors</a>
                    </li>
                    <li class="nav-item">
                        <div class="btn-group">
                            <button type="button" class="btn  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Usuari <span class="fa fa-user"></span></button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="<c:url value="/addUser"/>">Registrar-se</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/login"/>">Login</a>
                                <security:authorize access="isAuthenticated()">
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="<c:url value="/logout"/>">Logout</a>
                                </security:authorize>
                                <security:authorize access="isAuthenticated()">
                                    <c:set var="username">
                                    <security:authentication property="principal.username" /> 
                                    </c:set>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="<c:url value="/usuari/${username}"/>">Compte d'usuari</a>
                                </security:authorize>
                                <security:authorize access="hasRole('ADMIN')">
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="<c:url value="/administracio"/>">Administració</a>
                                </security:authorize>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Carretó<span class="fa fa-shopping-cart"></span></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <!-- BARRA DE SELECCION DE PRODUCTOS-->
    
    <nav>
        <div class="container2">
            <ul class="nav">

                <li class="nav-item">
                    <a class="nav-link active" href="<c:url value="/verdura"/>">Verdures <span class="fa fa-leaf"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/fruitsec"/>">Fruits secs <span class="fas fa-seedling"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/fruita"/>">Fruita <span class="fab fa-apple"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/peix"/>">Peix <span class="fas fa-fish"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/carn"/>">Carn <span class="fas fa-drumstick-bite"></span></a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- PRODUCTOS-->
    
    <div class="container my-5">

        <div class="row">
            <c:forEach var="producte" items="${productesPerCategoria}">

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value="${producte.producteImg}"/>" alt="imatge del producte"></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">${producte.producteNom}</a>
                            </h5>
                            <p>${producte.producteDesc}</p>
                            <h5 class="card-text">${producte.productePreu} €</h5>
                            <button class="btn btn-success float-right">Afegir</button>
                        </div>
                    </div>
                </div>  
            </c:forEach>

        </div>
    </div>
    <!--FOOTER NEWSLETTER-->
    <footer>
        <!--FORMULARIO NEWSLETTER-->
        <form class="p-4">
            <div class="form-row">
                <div class="col-md-3">
                    <label >Subscriu-te al nostre newsletter!</label>
                </div>
                <div class="col-md-3">
                    <input type="email" class="form-control form-control-sm" placeholder="Indica el teu email" aria-label="Your email">
                </div>
                <div class="col-md-3">
                    <button class="btn btn-sm btn-outline-white my-0" type="button">Subscriu-te!</button>
                </div>
            </div>
        </form>
      
    </footer>

    <!--FOOTER-->
    <footer class="page-footer pt-4">
        
        <div class="container">
            <div class="row">
                <div class="col-md-12 py-5">
                    <div class="text-center mb-5">
                        <!-- Facebook -->
                        <a class="fb-ic" href="#">
                            <span class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"></span>
                        </a>
                        <!-- Twitter -->
                        <a class="tw-ic" href="#">
                            <span class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </span>
                        </a>
                        <!-- Google +-->
                        <a class="gplus-ic" href="#">
                            <span class="fab fa-google-plus fa-lg white-text mr-md-5 mr-3 fa-2x"> </span>
                        </a>
                        <!--Instagram-->
                        <a class="ins-ic" href="#">
                            <span class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </span>
                        </a>
                    </div>
                    <ul>
                        <li><a href="#">Contacte</a></li>
                        <li><a href="#">Polítiques de privacitat</a></li>
                    </ul>
                </div>
            </div>  
        </div>
        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2019 Copyright BotigaBio
        </div>
    </footer>
</body>
