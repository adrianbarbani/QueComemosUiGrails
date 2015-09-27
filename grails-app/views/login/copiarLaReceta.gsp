<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />


</head>
<body style="font-family: Calibri, Verdana; ">
	<form method="POST">
	<div style="width: 18%; padding: 15pt;">
	<div class="panel-heading">
	
	
	Nombre de la copia: <input type="text" name="nombreDeCopia" class="form-control" value="${Receta.nombreDeCopia}"><br>

				<g:actionSubmit controller="login" action="copiar" class="btn btn-primary" id= "${Receta.nombreDeCopia}" value="Copiar" />


			</div>
		</div>
	</form>
</body>
</html>