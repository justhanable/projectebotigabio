<%-- 
    Document   : addProducte
    Created on : 22-oct-2019, 11:18:48
    Author     : jonat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Home</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	
        <form:form method="POST" action="addProducte" modelAttribute="producte">
             <table>
                <tr>
                    <td><form:label path="id">Id del producte</form:label></td>
                    <td><form:input path="id"/></td>
                </tr>
                <tr>
                    <td><form:label path="producteNom">Nom del producte</form:label></td>
                    <td><form:input path="producteNom"/></td>
                </tr>               
                <tr>
                <tr>
                    <td><form:label path="productePreu">Preu del producte</form:label></td>
                    <td><form:input path="productePreu"/></td>
                </tr>
                <tr>
                    <td><form:label path="producteStock">Stock del producte</form:label></td>
                    <td><form:input path="producteStock"/></td>
                </tr>  
                <tr>
                    <td><form:label path="producteDesc">Descripcio del producte</form:label></td>
                    <td><form:input path="producteDesc"/></td>
                </tr>
                <tr>
                    <td><form:label path="producteArea">Area del producte</form:label></td>
                    <td><form:input path="producteArea"/></td>
                </tr>
                 <tr>
                    <td><form:label path="producteCategoria">Categoria del producte</form:label></td>
                    <td><form:input path="producteCategoria"/></td>
                </tr>
                <tr>
                    <td><form:label path="producteImg">Img del producte</form:label></td>
                    <td><form:input path="producteImg"/></td>
                </tr>
                <tr>

                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>

</body>
</html>