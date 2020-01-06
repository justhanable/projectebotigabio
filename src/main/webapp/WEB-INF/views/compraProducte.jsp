

<!--
    Jonatan Barrio
    Vista JSP que permet llistar productes afegits al carretó en el procés de compra
-->


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

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
    <title>Productes BotigaBio</title>
    
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
         #productesMostrar {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }
        #productesMostrar td, #productesMostrar th {       
            border: 1px solid #ddd;
            padding: 8px;        
        }
        #productesMostrar td{                       
            width: 250px;
            text-align:center;
            margin-top: 25px;
        }
        #productesMostrar tr:nth-child(even){
            background-color: #f2f2f2;
        }

        #productesMostrar tr:hover {
            background-color: #ddd;
        }
        #productesMostrar th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align:center;
            margin-left: 20px;
            background-color: #4CAF50;
            color: white;
            width: 250px;
        }
        
        #pasarelaCompra, .pasarelaCompra{
            padding-right: 14px;
            text-align: 15px;
            border-spacing: 20px;
            margin-left: 35px;
            margin-top: 35px;
        }
        #preuTotal{
            font-weight: bold; 
            margin-left: 25px;
        }       
        #preuAPagar{
            font-weight: bold;                       
            margin-left: 25px;
        }
        #pasarelaCompraUsername, .pasarelaCompraUsername{                   
            margin-left: 22px;                     
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
                $('#cart').simpleCart({
                  addtoCartClass: '.sc-add-to-cart',
                  cartProductListClass: '.cart-products-list',
                  totalCartCountClass: '.total-cart-count',
                  totalCartCostClass: '.total-cart-cost',
                  showcartID : '#show-cart',
                  itemCountClass : '.item-count',
                });

                let itemName = localStorage.getItem('totalCoste');
                var llistatProductes = JSON.parse(localStorage.getItem("llistatProductes"));
                document.getElementById("preuTotalForm").value = itemName;   
                document.getElementById("preuAPagar").innerHTML = itemName + "€";   

                $("#productesMostrar").append("<table><tr> <th> Nom del producte</th><th> Preu total</th><th> Quantitat producte</th></tr>");
                llistatProductes.forEach(function(producteObject) {
                    $("#productesMostrar").append("<tr><td>"+producteObject.name+"</td><td>"+producteObject.price+" €</td><td>"+producteObject.count+"</td></tr>");                     
                    document.getElementById("productes").value += " Nom producte: " + producteObject.name + " Quantitat producte: " + producteObject.count;
                });
                $("#productesMostrar").append("</table>");

                $(".cssSubmit").click(function(){
                    document.getElementById("dataComanda").value = new Date($.now());
                    document.getElementById("preuTotal").value = itemName;   
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
                        <div class="dropdown dropdown">
                        
                           <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Carretó <span class="fa fa-shopping-cart"></span></button>
                           <div class="dropdown-menu dropdown-menu-right force-scroll carreto" aria-labelledby="dropdownMenuButton">                   
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

    <!-- DADES DE COMANDA I PASARELA DE COMPRA-->
                                          
        <div class="container my-5">            
        <div class="row">                   
            <div class="col-sm">    
                <h3 class="mb-4"> Dades de la teva comanda</h3>
                <div class="table table-striped" id="productesMostrar"></div>              
            </div>         
        </div>   
            <div class="row">
                <form id="pasarelaCompra">
                    <p id="preuTotalForm"><i class="fas fa-hand-holding-usd mr-1 mb-1"></i> Preu total a pagar:</p>
                    <p id="preuAPagar" class="ml-12"></p>
                     <div class="form-group">
                         <label for="adreca"><i class="fas fa-map-marked-alt mr-1 mb-2"></i> Adreça on enviar els productes</label>
                                             <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="OKMateixaDireccio">
                        <label class="form-check-label" for="exampleCheck1">Envia els productes a l'adreça que ja tinc registrada</label>
                                             </div> <p class="mb-2">O bé, escriu una altre adreça aqui: </p>
                      <input type="text" class="form-control" id="adrecaClient" placeholder="Ex: C/ Sant Roures, 24. 3A, 08830, Sant Boi" required>
                    </div>
  
                    <div class="form-group">
                      <label for="numTarjetaBancaria"><i class="fas fa-credit-card mr-1 mb-2"></i> Número de tarjeta bancaria</label>
                      <input type="text"  class="form-control" id="numTarjetaBancaria" placeholder="4599 8736 8595 8383" required>
                    </div>
                    <div class="form-group">
                        <label for="anyCaducitat"><i class="far fa-calendar-alt mr-1 mb-2"></i> Mes i any de caducitat de la tarjeta</label> <br>
                      
                        <select class="form-control-sm" id="mesCaducitat" required>
                            <option>Gener</option>
                            <option>Febrer</option>
                            <option>Març</option>
                            <option>Abril</option>
                            <option>Maig</option>
                            <option>Juny</option>
                            <option>Juliol</option>
                            <option>Agost</option>
                            <option>Setembre</option>
                            <option>Octubre</option>
                            <option>Novembre</option>
                            <option>Desembre</option>
                        </select>
                        <select class="form-control-sm" id="anyCaducitat" required>
                            <option>2020</option>
                            <option>2021</option>
                            <option>2022</option>
                            <option>2023</option>
                            <option>2024</option>
                            <option>2025</option>
                            <option>2026</option>
                            <option>2027</option>
                      </select>
                      
                    </div>
                    <div class="form-group">
                    <label for="secretCodi"><i class="fas fa-sort-numeric-up-alt mr-1 mb-2"></i> Codi secret de la tarjeta</label>
                    <input type="password" minlength="4" maxlength="6" class="form-control" id="secretCodi" placeholder="Codi secret" required>
                  </div>
                </form>
            </div>
                           
                   <form:form cssClass="pasarelaCompraUsername" method="POST" action="compraProducte" modelAttribute="comanda">
             <table>
                <tr>
                   <form:hidden path="id" /> 
                </tr>
                <tr>
                    <td><form:label path="username"><i class="fas fa-user mr-1"></i> Username qui fa la comanda:  </form:label></td>
                     </tr>  
                     <tr>
                    <td><form:input id="username" class="cssForm" value="${username}" path="username" readonly="true" /></td>
                </tr>               
                <tr>
                    <form:hidden path="preuTotal" value="" /> 
                </tr>
                <tr>
                    <form:hidden path="gestionat" /> 
                </tr>  
                <tr>
                    <form:hidden path="dataComanda" /> 
                </tr>
                <tr>
                    <form:hidden path="productes" /> 
                </tr>         
                  
                <c:choose>
                    <c:when test="${not empty username}">
                        <tr>
                            <td><input id="submit" class="cssSubmit btn btn-primary btn-lg active" type="submit" value="Fer pagament"/></td>
                        </tr>                        
                    </c:when>                                                      
                    <c:otherwise>                                             
                       <tr>
                            <td> 
                                <a href="/projectebotigabio-master/login">
                                    <input class="cssSubmit btn btn-primary btn-lg active"  type="button" value="Primer has de fer login. Clica aquí" />
                                </a>
                            </td>
                        </tr>
                    </c:otherwise>                                     
                </c:choose>                               
            </table>
        </form:form> 
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