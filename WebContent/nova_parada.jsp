<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Hangar - Nova Parada</title>
</head>
<body>
	<c:import url="navbar.jsp" />
	<center>
		<h2>Nova Parada</h2>
	</center>
	<br>
	<div class="container">
		<form method="post" action="parada">
			<div class="form-group">
				<label for="aircraftClient">ID aeronave/Aeronave/Cliente:</label>
				<select class="form-control" id="aircraftClient" name="aircraftClient">
				<c:forEach var="aircraft" items="${aircrafts}">
					<option>${aircraft.id}/${aircraft.model}/${aircraft.clientName}</option>
				</c:forEach>
				</select>
			</div>
			
			<div class="form-group">
				<label for="place">Vagas Disponíveis:</label>
				<select class="form-control" id="place" name="place">
				<c:forEach var="places" items="${places}">
					<c:if test="${places.availability}">
						<option>${places.id}</option>
					</c:if>
				</c:forEach>
				</select>
			</div>
			<center><button type="submit" class="btn btn-success">Confirmar</button></center>
		</form>
	</div>
</body>
</html>