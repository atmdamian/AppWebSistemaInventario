<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventario</title>
<!-- include boostrap theme  -->
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>${titulo}</h1>
		</div>
		<div class="container">
			<div class="card">
				<div class="card-body">
					<form>
						<div class="form-group col-md-6 ">
							<input id="nombre" type="text" class="form-control"
								placeholder="Nombre Equipo"  required>
						</div>
						<div class="form-group col-md-6">
							<input id="modelo" type="text" class="form-control"
								placeholder="Modelo"  required>
						</div>
						<div class="form-group col-md-6">
							<input id="marca" type="text" class="form-control"
								placeholder="Marca" required>
						</div>
						<div class="form-group col-md-6">
							<input id="serie" type="text" class="form-control"
								placeholder="Serie"  required>
						</div>
						<div class="form-group col-md-6">
							<input id="ubicacion" type="text" class="form-control"
								placeholder="Ubicacion"  required>
						</div>
						<div class="form-group col-md-6">
							<button type="button" id="btn-submit" class="btn btn-primary"
								onclick="registroEquipo()">Enviar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		var nombre;
		var modelo;
		var marca;
		var serie;
		var ubicacion;
		
		function registroEquipo() {	
			$.ajax({
                url: "registrarEquipo.html",
                data: {
                	nombre : document.getElementById("nombre").value,
					modelo : document.getElementById("modelo").value,
					marca  : document.getElementById("marca").value,
				    serie  : document.getElementById("serie").value,
					ubicacion: document.getElementById("ubicacion").value
                },
                success: function (data) {
                	console.log(data);
                    //alertify.success(data);
                    //TablaUsuario();
                }
            });	
			
		}
	</script>
</body>
</html>