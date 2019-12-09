<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
    <title>Proveïdors</title>
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
        
        .btn-success, h3{
            margin-left: 15px;
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
 
    </style>
</head>

<body>
    
    <!--BARRA NAVEGADOR-->
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
        <div class="container-fluid">
            <!--LOGOTIPO-->
            <a class="navbar-brand" href="<c:url value="/"/>">   
                <img class="logo" src="<c:url value="/resources/img/botigabio.png"/>" alt="">
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
                        <a class="nav-link" href="proveidors">Proveïdors</a>
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
    
    <!-- BARRA DE SELECCION DE PRODUCTOS-->
    
    <nav>
        <div class="container2">
            <ul class="nav">

                <li class="nav-item">
                    <a class="nav-link active" href="<c:url value="/verdura"/>">Verdures <i class="fa fa-leaf"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/fruitsec"/>">Fruits secs <i class="fas fa-seedling"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/fruita"/>">Fruita <i class="fab fa-apple"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/peix"/>">Peix <i class="fas fa-fish"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/carn"/>">Carn <i class="fas fa-drumstick-bite"></i></a>
                </li>
            </ul>
        </div>
    </nav>

	
        <br>
        <div class="row">
            <div class="col-sm-6">
                 <div style="margin-left: 20px;" class="card container-fluid">
                   
                </div>
            </div>
        </div>
	<br>
        
        <!-- SE MUESTRAN TODOS LOS PRODUCTOS -->

        <h3>Llistat de tots els productes</h3>
	${message}
         <br>	
	<a href="${pageContext.request.contextPath}/addProveidors">
        <button type="button" class="btn btn-success"><i class="far fa-plus-square"></i> Afegir nou proveïdor</button>
        </a>
	<br>
	<br>
	<br>
		<table class="table table-bordered table-striped text-center">
		<thead>
			<tr>
				<th>Id</th>
                                <th>Nom</th>
				<th>Adreça</th>
                                <th>Telèfon</th>
				<th>Zona</th>
                                <th>Categoria</th>
                                
			</tr>
		</thead>                          
		<tbody>
			<c:forEach var="proveidors" items="${ProveidorsList}">
				<tr>
					<td>${proveidors.id}</td>
                                        <td>${proveidors.proveidorNom}</td>
                                        <td>${proveidors.proveidorAddress}</td>
                                        <td>${proveidors.proveidorTel}</td>
                                        <td>${proveidors.proveidorZona}</td>
                                        <td>${proveidors.proveidorCategoria}</td>
					<td><a href="${pageContext.request.contextPath}/editProveidors/${proveidors.id}">Editar <i class="far fa-edit"></i></a></td>
					<td><a  style="color:red"
						href="${pageContext.request.contextPath}/deleteProveidors/${proveidors.id}">Eliminar<i class="far fa-trash-alt"></i></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
        
        
        <!-- SE MUESTRAN TODOS LOS USUARIOS -->
        
        <br>
	<br>
	<br>
	<a href="${pageContext.request.contextPath}/addUser">Add User</a>
	<br>
	<h3>List of all users</h3>
	${message}
	<br>
	<br>
	<table border="1px" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
                            
                                <th>Id</th>
				<th>Nom d'usuari</th>
				<th>E-mail</th>
				<th>Nom i Cognoms</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="user" items="${userList}">
				<tr>
                                        <td>${user.id}</td>
					<td>${user.username}</td>
					<td>${user.email}</td>
					<td>${user.name}</td>
					<td><a
						href="${pageContext.request.contextPath}/usuari/${user.username}">Edit</a></td>
					<td><a
						href="${pageContext.request.contextPath}/deleteUser/${user.username}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>


	</table>
        
        
            <!--FOOTER NEWSLETTER-->
    <footer>
        <!--FORMULARIO NEWSLETTER-->
        <form class="p-4">
            <div class="form-row">
                <div class="col-md-3">
                    <label>
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
</html>