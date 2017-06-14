<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Hangar/css/style.css">
<title>Controle de Hangar - Vagas</title>
</head>
<body>
	<c:import url="navbar.jsp"/>
	
	<center><h2>Vagas</h2></center><br>
	<center>
		<a href="nova_parada"><button type="button" class="btn btn-primary">NOVA PARADA</button></a>
		<a href="paradas_atuais"><button type="button" class="btn btn-warning">PARADAS ATUAIS</button></a>
	</center><br>
	<div class="container">
		<table id="placesTable" class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Tamanho</th>
					<th>Disponibilidade</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="places" items="${places}">
					<tr>
						<td>${places.id}</td>
						<td>${places.size}</td>
						<c:choose>
							<c:when test="${not places.availability}">
								<td>Indisponível</td>
							</c:when>
							<c:otherwise>
								<td>Disponível</td>
							</c:otherwise>
						</c:choose>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>