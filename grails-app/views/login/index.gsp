<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />


	<title>Bienvenido a Que Comemos</title>
</head>
<body style="font-family: Calibri, Verdana; ">
	<form method="POST">
	<div style="width: 18%; padding: 15pt;">
	<div class="panel-heading">
		Usuario: <input type="text" name="usuario" class="form-control" value="${login.nombreUsuarioABuscar}"><br>
		Contrasenia: <input type="password" name="contrasenia" class="form-control" value="${login.contrasenia}"><br>
		<g:actionSubmit controller="login" action="sumar" class="btn btn-primary" value="Ingresar"/>
		
		
 	<g:if test="${errorMessage}">
     		<div class="row">
          	<div class="alert alert-danger">${errorMessage}</div>
     	</div>
 	</g:if>
		
		
		</div>
		</div>
	</form>
</body>
</html>