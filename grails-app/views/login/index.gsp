<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />


	<title>Bienvenido a Que Comemos</title>
</head>
<body style="font-family: Calibri, Verdana; ">
	<form method="POST">
		Usuario: <input type="text" name="usuario" value="${login.nombreUsuarioABuscar}"><br>
		Contrasenia: <input type="password" name="contrasenia" value="${login.contrasenia}"><br>
		<g:actionSubmit controller="login" action="sumar" value="Ingresar"/>
	</form>
</body>
</html>