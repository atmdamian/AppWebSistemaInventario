<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="resources/css/loginStyle.css">
<script src="resources/js/jquery-3.3.1.js"></script>

</head>
<body>

	<form:form>
		<div class="imgcontainer">
			<img src="resources/img/logo.png" alt="Logo" class="logo">
		</div>

		<div class="container">
			<label for="user"><b>Nombre Usuario:</b></label>
			<form:input path="usuario" placeholder="Nombre Usuario" name="user"
				required="required"></form:input>
			<label for="pw"><b>Contraseñia:</b></label>
			<form:input path="contrasenia" type="password" placeholder="Contraseñia" name="pw"
				required="required"></form:input>
			<button type="submit">Entrar</button>
			<label> <input type="checkbox" checked="checked"
				name="remember"> Recordarme
			</label>
		</div>

		<div class="container" style="background-color: #f1f1f1">
			<button type="button" class="cancelbtn">Cancelar</button>
			<span class="psw">Olvidaste <a href="#">contraseñia?</a></span>
		</div>
	</form:form>
</body>
</html>