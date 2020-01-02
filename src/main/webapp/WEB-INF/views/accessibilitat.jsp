<%-- 
    Document   : accessibilitat
    Created on : 02-ene-2020, 18:01:52
    Author     : Xavi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ca">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Consulta de les pautes d'accessibilitat seguides a www.botigabio.com">
    <link rel="icon" href="<spring:url value="/resources/img/favicon-botigabio.png"/>" type="image/png" sizes="32x32">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--LINK A CSS-->
    <link rel="stylesheet" type="text/css" href="">
    <!-- Bootstrap4-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Accessibilitat web</title>
    <!--GOOGLE FONTS-->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC|Baloo+Bhai|Dancing+Script|Roboto|Fascinate|Indie+Flower|Modak|Pacifico|Shadows+Into+Light+Two&display=swap" rel="stylesheet">
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
        img{
           width: 100%;
           height: auto;
           background-size: cover; 
        }

        .input-group {
            width: 375px
        }

        li {
            font-size: 18px;
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
        
        @media (max-width:600px){
                             
        }
        button.btn.btn-default {
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
            background-color: mediumseagreen;
            color:white
        }
        .jumbotron {
            padding-top:0;
            background-image: url(<c:url value='/resources/img/vegetables-752153_1280.jpg'/>);
            background-size: cover;
            height:500px;
            font-family:Baloo Bhai;
            color:white
        }
        .container{
           font-family:Roboto; 
            
        }
        
       
        
        .barraCercar{
            height: 40px;
            width: 40%;                              
        }
        
        .barraSelect{                    
            background-color: #DDDDDD;
            margin-right: 10px;
            margin-left:25px;
        }
        /*
        #legal{
            border-style: solid ;
                border-radius: 5px;
                    border-width: 1px;
                        background-color: whitesmoke
        }
        */
        

        
    </style>
</head>
<body>
    
    <!--BARRA NAVEGADOR-->
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
        <div class="container-fluid">
                                  
            <!--LOGOTIPO-->
            <a class="navbar-brand" href="<c:url value="/"/>">   
                <img class="logo" alt="logotip botigabio" src="<spring:url value="/resources/img/botigabio.png"/>">
            </a>
                        
            <!--BUSCADOR-->               
            <form class="input-group lg-form form-sm form-2 ml-4 mr-4 barraCercar" method="get" action="search" name="producteCategoria">
                              
                <select class="form-control my-0 py-0 lime-border rounded barraSelect" name="producteCategoria">
                    <option value="tots">Totes les categories</option>    
                    <option value="verdura">Verdures</option>
                    <option value="fruitsec">Fruits secs</option>
                    <option value="fruita">Fruita</option>
                    <option value="peix">Peix</option>
                    <option value="carn">Carn</option>                                  
                </select>
                                                          
                <input class="form-control  py-0 my-0 lime-border rounded" type="text" name="producteNom" placeholder="Cercar productes" /> 
                <button class="btn btn-default ml-0 imgIcon" action="<c:url value="Search"/>" type="submit"><i class="fas fa-search" aria-hidden="true"></i></button>        
            </form>
               
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
                                <a class="dropdown-item" href="<c:url value="/producte/verdura"/>">Verdures</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/producte/fruitsec"/>">Fruits secs</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/producte/fruita"/>">Fruita</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/producte/peix"/>">Peix</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/producte/carn"/>">Carn</a>
                            </div>
                        </div>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/proveidors/"/>">Proveïdors</a>
                    </li>
                    <li class="nav-item">
                        <div class="btn-group">
                            <button type="button" class="btn  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Usuari <span class="fa fa-user"></span></button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="<c:url value="/addUser"/>">Registrar-se</a>
                                <security:authorize access="!isAuthenticated()">
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="<c:url value="/login"/>">Login</a>
                                </security:authorize>
                                <security:authorize access="isAuthenticated()">
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="<c:url value="/logout"/>">Logout</a>
                                </security:authorize>
                                <security:authorize access="isAuthenticated()">
                                    <c:set var="username">
                                    <security:authentication property="principal.username" /> 
                                    </c:set>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="<c:url value="/usuari/${username}"/>">Compte de <c:out value ="${username}"/></a>
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
    <!--BODY-->
    <div class="container col-md-8">
        <br/>
        <br/>
        
        <div class="row" id="legal">
            <br/>
            <br/>
            <br/>
            <h1>Accessibilitat</h1>
            
            <p>Botigabio.com segueix les pautes d’accessibilitat WCAG 2.0 definides per el W3C per tal que la majoria d’usuaris puguin accedir als nostres continguts i serveis. S’han utilitzat els principis de perceptibilitat, operativitat, comprensibilitat i robustesa.

            </p>
            <p>Algunes de les pautes que hem utilitzats són:
            </p>
            <p>- Etiquetes amb text alternatiu per a les imatges del lloc web per tal de facilitar l’accés a usuaris amb dificultats visuals.
            </p>
            <p>- El model de navegació està pensat per utilitzar altres elements alternatius com pot ser el teclat, per a persones amb dificultats amb el maneig del ratolí.

            </p>
            <p>- La composició dels elements permet identificar amb facilitat i de forma intuïtiva la seva funció.
            </p>
            <p>- S’han utilitzat colors amb fort contrast per poder ser apreciats correctament per tots els usuaris.
            </p>
            <p>- Ús d’encapçalaments(h1,h2...etc) per a definir l’estructura del document html .
            </p>
            <p>- Títols únics, clars i descriptius per a cada una de les pàgines del lloc web .
            </p>
            
        </div>
        <br/>
        <br/>
        
    </div>
    
    <!--FOOTER NEWSLETTER-->
    <footer>
        <!--FORMULARIO NEWSLETTER-->
        <form class="p-4">
            <div class="form-row">
                <div class="col-md-3">
                    <label ><i class="fas fa-envelope mr-1"></i>
                         Subscriu-te al nostre newsletter!</label>
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
                        <li><a href="<c:url value="/contacte"/>">Contacte</a></li>
                        <li><a href="<c:url value="/avisLegal"/>">Avís Legal</a></li>
                        <li><a href="<c:url value="/politica"/>">Polítiques de privacitat</a></li>
                        <li><a href="<c:url value="/accessibilitat"/>">Accessibilitat</a></li>
                    </ul>
                </div>
            </div>  
        </div>
        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2019 Copyright BotigaBio
        </div>
    </footer>
</body>

