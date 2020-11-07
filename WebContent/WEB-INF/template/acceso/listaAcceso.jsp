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
							<input id="tipo" type="text" class="input form-control"
								placeholder="Tipo" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="hostname" type="text" class="input form-control"
								placeholder="HostName" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="ip" type="text" class="input form-control"
								placeholder="Direccion Ip" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="gateway" type="text" class="input form-control"
								placeholder="Gateway" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="mascara" type="text" class="input form-control"
								placeholder="Mascara Red" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="usuario" type="text" class="input form-control"
								placeholder="Usuario" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="contrasenia" type="text" class="input form-control"
								placeholder="Contraseña" required>
						</div>
						<div class="form-group col-md-6 ">
							<input id="servicio" type="text" class="input form-control"
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
                                <th scope="coll">Id</th>
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
	var direccion_ip;
	var gateway;
	var mascara_red;
	var usuario;
	var contrasenia;
	var servicios;
	function registroAcceso(){
		var datos = {
				tipo: document.getElementById("tipo").value,
				hostname: document.getElementById("hostname").value,
				direccion_ip: document.getElementById("ip").value,
				gateway: document.getElementById("gateway").value,
				mascara_red: document.getElementById("mascara").value,
				usuario: document.getElementById("usuario").value,
				contrasenia: document.getElementById("contrasenia").value,
				servicios: document.getElementById("servicio").value		
			   };
			   $.ajax({
			      type: "POST",
			      contentType: "application/json",
			      //dataType : 'json',
			      url: "api/postRegistrarAcceso.html",
			      data : JSON.stringify(datos),
			      /*data: {
						tipo: document.getElementById("tipo").value,
						hostname: document.getElementById("hostname").value,
						ip: document.getElementById("ip").value,
						gateway: document.getElementById("gateway").value,
						mascara: document.getElementById("mascara").value,
						usuario: document.getElementById("usuario").value,
						contrasenia: document.getElementById("contrasenia").value,
						servicio: document.getElementById("servicio").value						
					},*/ // Note it is important
			      success: function(response) {
			       TablaAccesos();
			       $(".input").val("");
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
                                '<td>' + dataJSON[i].id_credencial + '</td>' +
                                '<td>' + dataJSON[i].tipo + '</td>' +
                                '<td>' + dataJSON[i].hostname + '</td>' +
                                '<td>' + dataJSON[i].direccion_ip + '</td>' +
                                '<td>' + dataJSON[i].gateway + '</td>' +
                                '<td>' + dataJSON[i].mascara_red + '</td>' +
                                '<td>' + dataJSON[i].usuario + '</td>' +
                                '<td>' + dataJSON[i].contrasenia + '</td>' +
                                '<td>' + dataJSON[i]. servicios + '</td>' +                 
                                '<td>' + '<a class="btn btn-primary" onclick="modificarAcceso(this)" data-value="' + dataJSON[i].id_credencial + '"> Modificar </a>' + '</td>' +
                                '<td>' + '<a class="btn btn-danger" onclick="eliminarAcceso(this)" data-value="' + dataJSON[i].id_credencial + '"> Eliminar </a>' + '</td>' +

                                '</tr>';
                        $("#tableAccesos tbody").html(tablaAcceso);
                    }
                }
            }
        });
    }



    function modificarAcceso(id){
    	console.log("modificar", id);
    	}
	function eliminarAcceso(id){
	console.log("eliminar", id);
	}

	
</script>
</body>
</html>