<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- include boostrap theme  -->
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>Control Credenciales Acceso</h1>
		</div>
		<div class="container">
			<div class="card">
				<div class="card-body">
					<form>
						<div class="form-group col-md-6 ">
							<input id="tipo" type="text" class="form-control"
								placeholder="Tipo" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="hostname" type="text" class="form-control"
								placeholder="HostName" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="ip" type="text" class="form-control"
								placeholder="Direccion Ip" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="gateway" type="text" class="form-control"
								placeholder="Gateway" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="mascara" type="text" class="form-control"
								placeholder="Mascara Red" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="usuario" type="text" class="form-control"
								placeholder="Usuario" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="contrasenia" type="text" class="form-control"
								placeholder="Contraseña" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="servicio" type="text" class="form-control"
								placeholder="Servicios" required>
						</div>
						<div class="form-group col-md-6">
							<button type="button" id="btn-submit" class="btn btn-primary"
								onclick="registroAcceso()">Enviar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	var tipo;
	var hostname;
	var ip;
	var gateway;
	var mascara;
	var usuario;
	var contrasenia;
	
	function registroAcceso(){
	$.ajax({
			url: "registrarAcceso.html",
			data:{
					tipo: document.getElementById("tipo").value,
					hostname: document.getElementById("hostname").value,
					ip: document.getElementById("ip").value,
					gateway: document.getElementById("gateway").value,
					mascara: document.getElementById("mascara").value,
					usuario: document.getElementById("usuario").value,
					contrasenia: document.getElementById("contrasenia").value,
					servicio: document.getElementById("servicio").value						
				},
				success: function(data){
					console.log(data);
					}
		});
	}
	
</script>
</body>
</html>