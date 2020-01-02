<%-- 
    Document   : politica
    Created on : 29-dic-2019, 17:47:29
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
    <meta name="description" content="Botiga online de productes de proximitat Bio. Pàgina de Polítiques de privacitat.">
    <link rel="icon" href="<spring:url value="/resources/img/favicon-botigabio.png"/>" type="image/png" sizes="32x32">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--LINK A CSS-->
    <link rel="stylesheet" type="text/css" href="">
    <!-- Bootstrap4-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Polítiques de privacitat</title>
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
        <br/ >
        <br/ >
        
        <div class="row" id="legal">
            
            
            <h1>1. Política de privacitat <br></h1>
            
            <h3>Protecció de dades de caràcter personal segons la LOPD </h3>
            <p>Grup 3 DAW, en aplicació de la normativa vigent en matèria de protecció de dades de caràcter personal, informa que les seves dades personals que es recullen a través de formularis del lloc web o registre d’usuari de: www.botigabio.com, s’inclouen en els fitxers automatitzats específics d’usuari.
            </p>
            <p>La recollida i tractament automatitzat de les dades de caràcter personal té com a finalitat el manteniment de la relació comercial i l’acompliment de tasques d’informació i altres activitats pròpies de Grup 3 DAW.
            </p>
            <p>Aquestes dades únicament seran cedides a aquelles entitats que siguin necessàries amb l’únic objectiu de donar compliment a la finalitat anteriorment exposada.
            </p>
            <p>Grup 3 DAW adopta les mesures necessàries per a garantir la seguretat, integritat i confidencialitat de les dades conforme el Reglament 2016/679 del Parlament Europeu relatiu a la protecció de les persones físiques pel que respecta al tractament de dades personals i la lliure circulació de les mateixes.
            </p>
            <p>L’usuari podrà en qualsevol moment exercitar els drets d’accés, oposició, rectificació i cancel·lació reconeguts pel citat Reglament. L’exercici d’aquests drets pot realitzar-los el propi usuari a través d’email a: botigabio@gmail.com o en la direcció: c/ Botigabio Barcelona.
            </p>
            <p>L’usuari manifesta que totes les dades facilitades per ell mateix son certes i correctes i es compromet a mantenir-los actualitzats, comunicant els canvis a Grup 3 DAW.
            </p>
            <h3>Finalitat del tractament de les dades personals</h3>
            
            <p>A Grup 3 DAW, tractarem les teves dades personals recopilades a través del lloc web www.botigabio.com amb les següents finalitats:
            </p>
            <p>- En cas de contractació de bens o serveis ofertats a través de www.botigabio.com, utilitzarem les dades per mantenir la relació contractual així com a la gestió, administració, informació prestació i millora del servei.
            </p>
            <p>- Enviament d’informació sol·licitada a través de formularis de contacte.
            </p>
            <p>- Newsletters, promocions i/o publicitat dels nostres productes de proximitat.
            </p>
            <p>Et recordem que pots oposar-te a l’enviament de comunicacions comercials per qualsevol vía i en qualsevol moment, a través de correu electrònic o a la direcció mencionada anteriorment.

            </p>
            <h3>Per quant temps es conserven les dades recopilades?</h3>
            <p>Les dades personals proporcionades es conservaran mentre es mantingui la relació comercial o no sol·licitis la suspensió.</p>
            <h3>Drets de propietat intel·lectual de Grup 3 DAW.</h3>
            <p>Grup 3 DAW és el titular de tots els drets d’autor, propietat intel·lectual, industrial i altres drets que guardin relació amb els continguts del lloc web www.botigabio.com i els serveis oferts en el mateix, així com els programes necessaris para la seva implementació i informació relacionada.</p>
            <p>No es permet la reproducció, publicació i/o ús no estrictament privat dels continguts, totals o parcials, del lloc web www.botigabio.com sense els seu consentiment previ i per escrit.</p>
            <h3>Comunicacions comercials</h3>
            <p>En aplicació de la LSSI, Grup 3 DAW no enviarà comunicacions publicitaries o promocionals per correu electrònic o altre medi de comunicació equivalent que prèviament no hagi sigut sol·licitat o expressament autoritzat per els destinataris d’aquestes.<br><br></p>
            
            <h1>2. Política de cookies</h1>
            
            
            <p>Les cookies són arxius que els llocs webs o les aplicacions instal·len al navegador o dispositiu de l’usuari durant la navegació per les pàgines web o aplicació i serveixen per emmagatzemar informació sobre la visita.</p>
            <p>L’ús de cookies permet optimitzar la navegació, adaptant la informació i serveis oferts als interessos de l’usuari pera a proporcionar una millor experiència sempre que visita la web.</p>
            
            
            <h3>Tipus de cookies segons l’entitat que les gestioni</h3>
            
            <p>Segons qui sigui l’entitat que gestioni l’equip o domini des d’on s’envien les cookies i tracti les dades que s’obtinguin es poden distingir dos tipus:</p>
            <p>-Cookies pròpies: Són aquelles que s’envien a l’equip terminal de l’usuari des d’un equip o domini gestionat pel mateix editor i des del qual es presta el servei sol·licitat per l’usuari.</p>
            <p>-Cookies de tercer: Són aquelles que s’envien a l’equip terminal de l’usuari des d’un equip o domini que no és gestionat per l’editor, sinó per una altra entitat que tracta les dades obtingudes a través de les cookies.</p>
            <p>En el cas que les cookies siguin instal·lades des d’un equip o domini gestionat pel propi editor però la informació que es reculli mitjançant aquestes sigui gestionada per un tercer, no poden ser considerades com cookies pròpies.</p>
            
            <h3>Tipus de cookies segons el termini que romanen activades</h3>
            <p>-Cookies de sessió: Són un tipus de cookies dissenyades per recaptar i emmagatzemar dades mentre l’usuari accedeix a una pàgina web.</p>
            <p>-Cookies persistents: Són un tipus de cookies en el qual les dades segueixen emmagatzemats en el terminal i poden ser accedits i tractats durant un període definit pel responsable de la cookie, i que pot anar d’uns minuts a diversos anys.</p>
            
            <h3>Tipus de cookies segons la seva finalitat</h3>
            
            <p>-Cookies tècniques: Són aquelles que permeten a l’usuari la navegació a través d’una pàgina web, plataforma o aplicació i la utilització de les diferents opcions o serveis que en ella existeixin.</p>
            
            <p>-Cookies de personalització: Són aquelles que permeten a l’usuari accedir al servei amb algunes característiques de caràcter general predefinides en funció d’una sèrie de criteris en el terminal de l’usuari.</p>
            
            <p>-Cookies d’anàlisi: Són aquelles que permeten al responsable d’aquestes, el seguiment i anàlisi del comportament dels usuaris dels llocs web als quals estan vinculades.</p>
            
            <p>-Cookies publicitàries: Són aquelles que permeten la gestió, de la forma més eficaç possible, dels espais publicitaris que, si escau, l’editor hagi inclòs en una pàgina web, aplicació o plataforma des de la qual presta el servei sol·licitat sobre la base de criteris com el contingut editat o la freqüència en la qual es mostren els anuncis.</p>
            
            <p>-Cookies de publicitat comportamental: Són aquelles que permeten la gestió, de la forma més eficaç possible, dels espais publicitaris que, si escau, l’editor hagi inclòs en una pàgina web, aplicació o plataforma des de la qual presta el servei sol·licitat. Aquestes cookies emmagatzemen informació del comportament dels usuaris obtinguda a través de l’observació continuada dels seus hàbits de navegació, la qual cosa permet desenvolupar un perfil específic per mostrar publicitat en funció del mateix.</p>
            
            <h3>Cookies utilitzades en aquest lloc web</h3>
            
            <p>En el nostre lloc web nomès utilitzem cookies no intrusives, aquestes són cookies d’inici de sessió en llocs webs on existeixen usuaris registrats, carrets de la compra, preferències de visualització, etc. Son inherents al sistema i el seu bloqueig provocarà no poder utilitzar els serveis sol·licitats.</p>
            
            <h3>Deshabilitar l’ús de cookies.</h3>
            
            <p>Tens la opció de permetre, bloquejar o eliminar les cookies instal·lades al teu equip mitjançant la configuració de les opcions del navegador instal·lat al teu equip. Al desactivar cookies, alguns serveis disponibles podrien deixar d’estar operatius.
            La forma de deshabilitar les cookies és diferent per a cada navegador, però normalment pot fer-se des de el menú d’Eines o Opcions.</p>
            
            <p>-Microsoft Internet Explorer o Microsoft Edge: http://windows.microsoft.com/es-es/windows-vista/Block-or-allow-cookies</p> 
            <p>-Mozilla Firefox: http://support.mozilla.org/es/kb/impedir-que-los-sitios-web-guarden-sus-preferencia</p> 
            <p>-Chrome: https://support.google.com/accounts/answer/61416?hl=es</p> 
            <p>-Safari: http://safari.helpmax.net/es/privacidad-y-seguridad/como-gestionar-las-cookies/</p> 
            <p>-Opera: http://help.opera.com/Linux/10.60/es-ES/cookies.html </p>
        </div>
        <br/ >
        <br/ >
        
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
