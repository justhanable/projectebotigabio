<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/02893b0cef.js" crossorigin="anonymous"></script>
        <title>Editar producte</title>
        
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
	
        <form:form method="POST" action="editProducte" modelAttribute="producte">
        
        	<form:hidden path="id" /> 
             <table>
                    <td><form:label path="id">Nom del producte</form:label></td>
                    <td><form:input class="cssForm" path="producteNom"/></td>
                                    </tr>               
                <tr>
                    <td><form:label path="producteNom">Nom del producte</form:label></td>
                    <td><form:input class="cssForm" path="producteNom"/></td>
                </tr>               
                <tr>
                <tr>
                    <td><form:label path="productePreu">Preu del producte</form:label></td>
                    <td><form:input class="cssForm" path="productePreu"/></td>
                </tr>
                <tr>
                    <td><form:label path="producteStock">Stock del producte</form:label></td>
                    <td><form:input class="cssForm" path="producteStock"/></td>
                </tr>  
                <tr>
                    <td><form:label path="producteDesc">Descripcio del producte</form:label></td>
                    <td><form:input class="cssForm" path="producteDesc"/></td>
                </tr>
                <tr>
                    <td><form:label path="producteArea">Area del producte</form:label></td>
                    <td><form:input class="cssForm" path="producteArea"/></td>
                </tr>
                 <tr>
                    <td><form:label path="producteCategoria">Categoria del producte</form:label></td>
                    <td><form:input class="cssForm" path="producteCategoria"/></td>
                </tr>
                <tr>
                    <td><form:label path="producteImg">Enllaç a la imatge del producte</form:label></td>
                    <td><form:input class="cssForm" path="producteImg"/></td>
                </tr>
                <tr>
                    <td><input class="cssSubmit" type="submit" value="Desar"/>                  
                    </td>
                </tr>
            </table>
        </form:form>
</body>
</html>
