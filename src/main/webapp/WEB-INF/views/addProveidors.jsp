
<!--
    DAW Grup 3
    Vista JSP que permet afegir proveidor a la botiga

-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Afegir producte</title>

            <!--CSS-->
    <style>
        
        body {
            margin-left: 20px;
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
        
    </style>
</head>
<body>
	<h2><i class="far fa-plus-square"></i> ${headerMessage}</h2>
	
        <form:form method="POST" action="addProveidors" modelAttribute="proveidors">
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
                            <td><form:label path="proveidorArea">Àrea del proveidor</form:label></td>
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

                    <td><input class="cssSubmit"type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>

        <script src="https://kit.fontawesome.com/02893b0cef.js" crossorigin="anonymous"></script>
</body>
</html>