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
								placeholder="Servicio" required>
						</div>
						<div class="form-group col-md-6">
							<button type="button" id="btn-submit" class="btn btn-primary"
								onclick="registroAcceso();TablaAccesos();
									">Enviar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
	<table id="tableAccesos" class="table table-bordered table-striped">
                            <thead clas="thead-light">
                                <tr>
                                    <th scope="coll">Tipo</th>
                                    <th scope="col">HostName</th>
                                    <th scope="col">DireccionIP</th>
                                    <th scope="col">Geteway</th>
                                    <th scope="col">MascaraRed</th>
                                    <th scope="col">Usuario</th>
                                    <th scope="col">Contraseña</th>
                                    <th scope="col">Servicio</th>
                                    
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
	</div>
	<script type="text/javascript">
	 $(document).ready(function () {
         TablaAccesos();
     });
	var tipo;
	var hostname;
	var ip;
	var gateway;
	var mascara;
	var usuario;
	var contrasenia;
	
	function registroAcceso(){
		var datos = {
				"tipo": document.getElementById("tipo").value,
				"hostname": document.getElementById("hostname").value,
				"ip": document.getElementById("ip").value,
				"gateway": document.getElementById("gateway").value,
				"mascara": document.getElementById("mascara").value,
				"usuario": document.getElementById("usuario").value,
				"contrasenia": document.getElementById("contrasenia").value,
				"servicio": document.getElementById("servicio").value		
			   }
			   $.ajax({
			      type: "POST",
			      //contentType : 'application/json; charset=utf-8',
			      //dataType : 'json',
			      url: "registrarAcceso.html",
			      data: {
						tipo: document.getElementById("tipo").value,
						hostname: document.getElementById("hostname").value,
						ip: document.getElementById("ip").value,
						gateway: document.getElementById("gateway").value,
						mascara: document.getElementById("mascara").value,
						usuario: document.getElementById("usuario").value,
						contrasenia: document.getElementById("contrasenia").value,
						servicio: document.getElementById("servicio").value						
					}, // Note it is important
			      success: function(response) {
			       console.log(response);
			       TablaAccesos();
			     },
			        error: function(){      
			            console.log('Error al insertar');
			           }
			  });
	/*$.ajax({
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
		});*/
	}



    function TablaAccesos() {
        $.ajax({
            url: "getAccesos.html",
            data: {
            },
            success: function (data) {
                var dataJSON = data;
                dataJSON = JSON.parse(dataJSON);
                var tablaAcceso = '';
                if (jQuery.isEmptyObject(dataJSON))
                {
                    $("#tableAccesos tbody").html('');
                } else {
                	for (var i = 0; i < dataJSON.length; i++) {
                		tablaAcceso +=
                                '<tr>' +
                                '<td>' + dataJSON[i].tipo + '</td>' +
                                '<td>' + dataJSON[i].hostname + '</td>' +
                                '<td>' + dataJSON[i].direccion_ip + '</td>' +
                                '<td>' + dataJSON[i].gateway + '</td>' +
                                '<td>' + dataJSON[i].mascara_red + '</td>' +
                                '<td>' + dataJSON[i].usuario + '</td>' +
                                '<td>' + dataJSON[i].contrasenia + '</td>' +
                                '<td>' + dataJSON[i]. servicios + '</td>' +                 
                                '<td>' + '<a class="btn btn-primary" onclick="modificarUsuario(this)" data-value="' + 1 + '"> Modificar </a>' + '</td>' +
                                '<td>' + '<a href="#" title="Eliminar"> Eliminar </a>' + '</td>' +
                                '</tr>';
                        $("#tableAccesos tbody").html(tablaAcceso);
                    }
                }
            }
        });
    }
	
</script>
</body>
</html>