

<!--
    DAW Grup 3
    Vista JSP que permet modificar proveïdors
-->



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/02893b0cef.js" crossorigin="anonymous"></script>
        <title>Editar proveidor</title>
        
            <!--CSS-->
    <style>       
        body {
            margin-left: 20px;
        }      
        .cssForm{
            width: 100%;
            margin: 4px 0;
            padding: 12px 20px;  
            box-sizing: border-box;      
        }       
        .cssSubmit{
            margin-left: 50%;
            margin-top: 10%;                               
        }       
    </style>
    </head>
    <body>
        
        <h2><i class="far fa-edit"></i> ${headerMessage}</h2>
	
        <form:form method="POST" action="editProveidors" modelAttribute="proveidors">
        
        	<form:hidden path="id" /> 
                    <table>               
                        <td><form:label path="proveidorNom">Nom del Proveidor</form:label></td>
                        <td><form:input class="cssForm" path="proveidorNom"/></td>
                        </tr>               
                        <tr>
                        <tr>
                        <td><form:label path="proveidorAddress">Adreça del proveidor</form:label></td>
                        <td><form:input class="cssForm" path="proveidorAddress"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="proveidorTel">Telefon del proveidor</form:label></td>
                            <td><form:input class="cssForm" path="proveidorTel"/></td>
                        </tr>  
                        <tr>
                            <td><form:label path="proveidorZona">Zona del proveidor</form:label></td>
                            <td><form:input class="cssForm" path="proveidorZona"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="proveidorArea">Area del proveidor</form:label></td>
                            <td><form:input class="cssForm" path="proveidorArea"/></td>
                        </tr>
                       
                         <tr>
                            <td><form:label path="proveidorCategoria">Categoria del proveidor</form:label></td>
                            <td><form:input class="cssForm" path="proveidorCategoria"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="proveidorImg">Enllaç a la imatge del proveidor</form:label></td>
                            <td><form:input class="cssForm" path="proveidorImg"/></td>
                        </tr>
                        <tr>
                            <td><input class="cssSubmit" type="submit" value="Desar"/>                  
                            </td>
                        </tr>
                    </table>
        </form:form>
    </body>
</html>
