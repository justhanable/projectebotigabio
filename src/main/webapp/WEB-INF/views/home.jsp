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
    <title>BotigaBio</title>
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
        
        strong{
            font-size:50px
        }
    </style>
</head>
<body>
    
    <!--BARRA NAVEGADOR-->
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
        <div class="container-fluid">
            <!--LOGOTIPO-->
            <a class="navbar-brand" href="<c:url value="/"/>">   
                <img class="logo" src="<spring:url value="/resources/img/botigabio.png"/>" alt="">
            </a>
            
            
            <!--BUSCADOR-->
            <div class="input-group md-form form-sm form-2 ml-2 mr-2">
                <input class="form-control my-0 py-1 lime-border" name="barraCercador" type="text" placeholder="Busca productes" aria-label="Search">
                
                <span class="input-group-btn">
                    <button class="btn btn-default" action="<c:url value="/cercar/Toma"/>" type="submit"><i class="fas fa-search" aria-hidden="true"></i></button>
                </span>
            </div>
                
                            <!-- Search form -->
            <form class="form-inline md-form form-sm mt-0" method="get" >
              <i class="fas fa-search" aria-hidden="true"></i>
              <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search" name="cercar"
                aria-label="Search">
              <br>
            </form>
                            
                            <form action="http://localhost:8080/projectebotigabio-master/" method="post">
    <div class="input-wrap">
        <!-- Give the input the name of the field you want to send -->
        <input type="text" class="block"  name="cercar" >
        <!-- Don't give the submit button a name -->
        <input type="submit" class="block">
    </div>
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
                            <button type="button" class="btn  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Usuari <i class="fa fa-user"></i></button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="<c:url value="/addUser"/>">Registrar-se</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/login"/>">Login</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value="/logout"/>">Logout</a>
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
                        <a class="nav-link" href="#">Carretó<i class="fa fa-shopping-cart"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!--BODY-->
    <div class="container">
        <div class="row">
            <!--IMAGEN PRINCIPAL-->
            <div class="jumbotron card card-image col-12">
                <div class="text-center py-5 px-4">
                    <div>
                    <h1 class="card-title h1-responsive pt-3 mb-5"><strong>PRODUCTES DE PROXIMITAT</strong></h1>
                    <h1 class="card-title h1-responsive pt-3 mb-5"><strong> GARANTIA DE QUALITAT</strong></h1>
                    </div>
                </div>
            </div>
            <!--SELECCION DE TIPO DE PRODUCTO-->
            <div class="row justify-content-center my-1">

            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="<c:url value="/verdura"/>"><img class="card-img-top" src="<c:url value="/resources/img/vegetables-4375192_1280.jpg"/>" alt=""></a>
                    <div class="card-body">
                    <h4 class="card-title text-center">
                      <a href="<c:url value="/verdura"/>">Verdures</a>
                  
                    </h4>
                    </div>
                </div>
            </div>

              <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="<c:url value="/fruitsec"/>"><img class="card-img-top" src="<c:url value="/resources/img/dried-fruits-3750383_1280.jpg"/>" alt=""></a>
                  <div class="card-body">
                    <h4 class="card-title text-center">
                      <a href="<c:url value="/fruitsec"/>">Fruits secs</a>
                    </h4>
                    </div> 
                </div>
              </div>

              <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="<c:url value="/fruita"/>"><img class="card-img-top" src="<c:url value="/resources/img/46768731734_31330f7805_c.jpg"/>" alt=""></a>
                  <div class="card-body">
                    <h4 class="card-title text-center">
                      <a href="<c:url value="/fruita"/>">Fruita</a>
                    </h4>
                    </div> 
                </div>
              </div>

              <div class="col-lg-3 col-md-6 mb-4 ml-1">
                <div class="card h-100">
                    <a href="<c:url value="/peix"/>"><img class="card-img-top" src="<c:url value="/resources/img/salmon-4143734_1280.jpg"/>" alt=""></a>
                  <div class="card-body">
                    <h4 class="card-title text-center">
                      <a href="<c:url value="/peix"/>">Peix</a>
                    </h4>
                    </div> 
                </div>
              </div>

              <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="<c:url value="/carn"/>"><img class="card-img-top" src="<c:url value="/resources/img/meat-3139641_1280.jpg"/>" alt=""></a>
                  <div class="card-body">
                    <h4 class="card-title text-center">
                      <a href="<c:url value="/carn"/>">Carn</a>
                    </h4>
                    </div>
                </div>
              </div>
            </div>
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
                            <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"></i>
                        </a>
                        <!-- Twitter -->
                        <a class="tw-ic" href="#">
                            <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                        </a>
                        <!-- Google +-->
                        <a class="gplus-ic" href="#">
                            <i class="fab fa-google-plus fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                        </a>
                        <!--Instagram-->
                        <a class="ins-ic" href="#">
                            <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                        </a>
                    </div>
                    <ul>
                        <li><a href="#">Contacte</a></li>
                        <li><a href="#">Polítiquest de privacitat</a></li>
                    </ul>
                </div>
            </div>  
        </div>
        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2019 Copyright BotigaBio
        </div>
    </footer>
</body>