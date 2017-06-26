<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<title>Controle de Hangar - Abastecimento</title>
</head>
<body>
	<c:import url="navbar.jsp" />

	<center><h2>Abastecimentos</h2></center><br>
	<center><a href="/Hangar/novo_abastecimento.jsp"><button type="button" class="btn btn-primary">NOVO ABASTECIMENTO</button></a></center><br>
	<div class="container">
		<table id="supplyTable" class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Data</th>
					<th>Preço</th>
					<th>Litros</th>
					<th>Combustivel</th>
					<th>Aeronave</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="supply" items="${supplies}">
					<tr>
						<td>${supply.id}</td>
						<td><fmt:formatDate value="${supply.fueldate}" pattern="dd/MM/yyyy HH:mm"/></td>
						<td>${supply.price}</td>
						<td>${supply.liter}</td>
						<td>${supply.fuelId}</td>
						<td>${supply.aircraftId}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>