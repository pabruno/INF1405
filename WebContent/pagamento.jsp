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
	<center><h2>Pagamento</h2></center>
	<center><h4>Valor: ${value}</h4></center>
	<center><a href="/Hangar/vagas"><button type="button" class="btn btn-success">CONFIRMAR</button></a></center>
</body>
</html>