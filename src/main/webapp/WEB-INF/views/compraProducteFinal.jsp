
<!--
    Jonatan Barrio
    Vista JSP la qual mostra el procés final de compra. Aquí s'indica a l'usuari que s'ha registrat correctament la comanda i
    s'indica la data d'entrega.
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>

<!DOCTYPE html>
<html lang="ca">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Botiga online de productes de proximitat Bio. Es mostra la confirmació de comanda i data d'entrega dels productes.">
    <link rel="icon" href="favicon.png" type="image/png" sizes="32x32">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--LINK A CSS-->
    <link rel="stylesheet" type="text/css" href="">
    <!-- Bootstrap4-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--GOOGLE FONTS-->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC|Baloo+Bhai|Dancing+Script|Fascinate|Indie+Flower|Roboto|Modak|Pacifico|Shadows+Into+Light+Two&display=swap" rel="stylesheet">
    <title>Finalització de comanda</title> 
      
    <!-- SCRIPT jquery.simpleCart-->
    <link href="<spring:url value="/resources/jquery/css/simple_Cart.css"/>" rel="stylesheet"> 
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" 
        integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT" 
        crossorigin="anonymous"></script>
    <script src="<spring:url value="/resources/jquery/js/jQuery.SimpleCart.js"/>" ></script>
      
     <!-- SCRIPT FONT-AWESOME, JQUERY, BOOTSTRAP-->
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
        .barraCercar{
            height: 40px;
            width: 40%;                              
        }       
        .barraSelect{                    
            background-color: #DDDDDD;
            margin-right: 10px;
            margin-left:25px;
        }               
        img {
           width: 305px; 
           height: 200px;
           object-fit: contain;
       }
        .cssForm{
            width: 100%;
            margin: 4px 0;
            padding: 10px 20px;  
            box-sizing: border-box;      
        }       
        .cssSubmit{
            margin-left: 50%;
            margin-top: 10%;                               
        }              
        .force-scroll {
            overflow-y: scroll;
            height: 400px;

        }             
        .carreto{                        
            background: #F8F9FA;
        }
    </style>   
    <script>           
        $(document).ready(function () {
              
            localStorage.removeItem("llistatProductes");
            localStorage.removeItem("totalCoste");
            localStorage.removeItem("shoppingCart");     

            var data = new Date();                         
            var avui = data.getTime();

            var fecha = new Date(avui+86400000);
            var options = { year: 'numeric', month: 'long', day: 'numeric' };
            document.getElementById("dataEntrega").innerHTML = fecha.toLocaleDateString("es-ES", options);
            
         $('#cart').simpleCart({
            addtoCartClass: '.sc-add-to-cart',
            cartProductListClass: '.cart-products-list',
            totalCartCountClass: '.total-cart-count',
            totalCartCostClass: '.total-cart-cost',
            showcartID : '#show-cart',
            itemCountClass : '.item-count'
          });
        });
    </script>
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
                        <a class="nav-link" href="<c:url value="/proveidors"/>">Proveïdors</a>
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
                        <div class="dropdown dropdown">
                        
                           <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Carretó <span class="fa fa-shopping-cart"></span></button>
                           <div class="dropdown-menu dropdown-menu-right carreto force-scroll" aria-labelledby="dropdownMenuButton">                   
                               <a class="dropdown-item" id="cart"></a>
                           </div>                        
                            </div>
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
                    <a class="nav-link active" href="<c:url value="/producte/verdura"/>">Verdures <i class="fa fa-leaf"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/producte/fruitsec"/>">Fruits secs <i class="fas fa-seedling"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/producte/fruita"/>">Fruita <i class="fab fa-apple"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/producte/peix"/>">Peix <i class="fas fa-fish"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/producte/carn"/>">Carn <i class="fas fa-drumstick-bite"></i></a>

                </li>
            </ul>
        </div>
    </nav>

    <!-- PRODUCTOS-->
    
    <div class="container">
        <div class="row">
            <div class="col-sm my-5 py-2">
                <h1> Has realitzat una compra. ¡Moltes gràcies! 
                    <i class="far fa-smile-beam"></i>
                </h1>    
            </div>  
            <div class="col-sm my-2 py-2">      
                <div class="col-lg-3 my-2 py-2">   
                </div>             
                <p>T'acabem d'enviar un <b>mail de confirmació</b> de la teva comanda amb tots els detalls i la factura d'aquesta.      
                   Els teus productes s'enviaràn i s'entregaràn un dia posterior a la teva compra.<br> </p>
                <br>      
                <i id="camioIcon" class="fas fa-truck"></i> La <b> data d'entrega </b> és:     
                <div id="dataEntrega" class="mb-3"> </div>           
            </div> 
        </div>
    </div>
                                        
    <!--FOOTER NEWSLETTER-->
    <footer>
        <!--FORMULARIO NEWSLETTER-->
        <form class="p-4">
            <div class="form-row">
                <div class="col-md-3">
                    <label >
                        <i class="fas fa-envelope mr-1"></i>
                            Subscriu-te al nostre newsletter!
                    </label>
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
                        <li><a href="<c:url value="/Historia"/>">La nostra història</a></li>
                    </ul>
                </div>
            </div>  
        </div>
        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2019 Copyright BotigaBio
        </div>
    </footer>
</body>