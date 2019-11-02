<%-- 
    Document   : producteCategoria
    Created on : 01-nov-2019, 11:13:52
    Author     : jonat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productes per categoria</title>
</head>
<body>
	<br>
	<br>
	<br>
	<a href="${pageContext.request.contextPath}/addProducte">Add Producte</a>
	<br>
	<h3>Llistat de tots els productes per la seguent categoria ${categoriaEscollida}: </h3>
	${message}
	<br>
	<br>
	<table border="1px" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th>id del producte</th>
                                <th>Nom del producte</th>
				<th>Preu del producte</th>
                                <th>Stock del producte</th>
				<th>Descripcio del producte</th>
                                <th>Area del producte</th>
                                <th>Categoria del producte</th>
                                <th>Imatge del producte</th>
			</tr>
		</thead>
                           

		<tbody>
			<c:forEach var="producte" items="${productesPerCategoria}">
				<tr>
					<td>${producte.id}</td>
                                        <td>${producte.producteNom}</td>
					<td>${producte.productePreu}</td>
                                        <td>${producte.producteStock}</td>
					<td>${producte.producteDesc}</td>
					<td>${producte.producteArea}</td>
					<td>${producte.producteCategoria}</td>
					<td>${producte.producteImg}</td>


					<td><a
						href="${pageContext.request.contextPath}/editProducte/${producte.id}">Edit</a></td>
					<td><a
						href="${pageContext.request.contextPath}/deleteProducte/${producte.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>


	</table>
</body>
</html>