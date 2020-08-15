<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Responsive Calendar For Bootstrap 4 Example</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.1.3/materia/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link rel="stylesheet" href="resources/css/calendar.css">
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT" crossorigin="anonymous"></script>
	<script src="resources/js/moment.min.js"></script>
	<script src="resources/js/calendar.js"></script>
	<style>
	body { background-color: #fafafa; }
	.container { margin: 150px auto; max-width: 960px; }
</style>
</head>
<body>
	<div class="container">
	<div id="calendar"></div>
</div>
</body>
<script>
	$(document).ready(function(e){
		calendar = new CalendarYvv("#calendar", moment().format("Y-M-D"), "Monday");
		calendar.funcPer = function(ev){	
			console.log(ev);
			obtenerFechaSeleccionado(ev.currentSelected)		
		};
		calendar.diasResal = [4,15,26]
		calendar.createCalendar();

		function obtenerFechaSeleccionado(fecha){
			console.log(':::::')	;
			
			console.log(fecha)	;		
			
		}
	});
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</html>