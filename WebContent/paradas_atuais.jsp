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
<script text="text/javascript" src="/Hangar/js/paradas_atuais.js"></script>
<title>Controle de Hangar - Paradas</title>
</head>
<body>
	<c:import url="navbar.jsp" />
	
	<center><h2>Vagas</h2></center><br>
	
	<div class="container">
		<table id="currentStopsTable" class="table table-striped">
			<thead>
				<tr>
					<th>ID da Parada</th>
					<th>Entrada</th>
					<th>Saída</th>
					<th>Vaga</th>
					<th>ID Aeronave</th>
					<th>Finalizar Parada</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="stops" items="${stops}">
					<tr>
						<td>${stops.id}</td>
						<td><fmt:formatDate value="${stops.startDate}" pattern="dd/MM/yyyy HH:mm"/></td>
						<c:choose>
    						<c:when test="${empty stops.departureDate}">
       							 <td></td>
    						</c:when>
    						<c:otherwise>
        						<td><fmt:formatDate value="${stops.departureDate}" pattern="dd/MM/yyyy HH:mm"/></td>
    						</c:otherwise>
						</c:choose>
						<td>${stops.placeId}</td>
						<td>${stops.aircraftId}</td>
						<td><button class='btn btn-default' id='${stops.id}' onclick='finishQuickStop(this.id)'><span class='glyphicon glyphicon-ok'></span></button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>