<%-- 
    Document   : editProducte
    Created on : 22-oct-2019, 12:54:06
    Author     : jonat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Editar producte</title>
    </head>
    <body>
        
        <h1>${headerMessage}</h1>
	
        <form:form method="POST" action="editProducte" modelAttribute="producte">
        
        	<form:hidden path="id" /> 
             <table>
                <tr>
                    <td><form:label path="producteNom">Nom del producte</form:label></td>
                    <td><form:input path="producteNom"/></td>
                </tr>
                <tr>
                    <td><form:label path="productePreu">Preu del producte</form:label></td>
                    <td><form:input path="productePreu"/></td>
                </tr>
                <tr>
                    <td><form:label path="producteDesc">Descripcio del producte</form:label></td>
                    <td><form:input path="producteDesc"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
</body>
</html>
