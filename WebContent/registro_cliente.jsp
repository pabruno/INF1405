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
<title>Hangar - Novo Cliente</title>
</head>
<body>
	<c:import url="navbar.jsp" />
	<div class="container">
		<center>
			<h2>Novo Cliente</h2>
		</center>
		<form method="post" action="novo_cliente">
			<div class="form-group">
				<label for="name">Nome:</label> <input type="text"
					class="form-control" id="name" name="name">
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="text"
					class="form-control" id="email" name="email">
			</div>
			<div class="form-group">
				<label for="phone">Telefone:</label> <input type="text"
					class="form-control" id="phone" name="phone">
			</div>
			<div class="form-group">
				<label for="license">License:</label> <input type="text"
					class="form-control" id="license" name="license">
			</div>
			<center>
				<button type="submit" class="btn btn-success">CONFIRMAR</button>
				<a href="clientes"><button type="button" class="btn btn-danger">VOLTAR</button></a>
			</center>
		</form>
	</div>
</body>
</html>