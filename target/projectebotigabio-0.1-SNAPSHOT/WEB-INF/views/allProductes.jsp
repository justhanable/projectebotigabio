<%-- 
    Document   : allProductes
    Created on : 22-oct-2019, 11:25:56
    Author     : jonat
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>All Productes</title>
</head>
<body>
	<br>
	<br>
	<br>
	<a href="${pageContext.request.contextPath}/addProducte">Add Producte</a>
	<br>
	<h3>List of all productes</h3>
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
			<c:forEach var="product" items="${ProducteList}">
				<tr>
					<td>${product.id}</td>
                                        <td>${product.producteNom}</td>
					<td>${product.productePreu}</td>
                                        <td>${product.producteStock}</td>
					<td>${product.producteDesc}</td>
                                        <td>${product.producteArea}</td>
					<td>${product.producteCategoria}</td>
					<td>${product.producteImg}</td>


					<td><a
						href="${pageContext.request.contextPath}/editProducte/${product.id}">Edit</a></td>
					<td><a
						href="${pageContext.request.contextPath}/deleteProducte/${product.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>


	</table>
</body>
</html>