<html>
<head>
	<title>Calculadora</title>
</head>
<body style="font-family: Calibri, Verdana; ">
	<form method="POST">
		Usuario: <input type="text" name="numero1" value="${calculadora.nombreUsuarioABuscar}"><br>
		Contrasenia: <input type="password" name="numero2" value="${calculadora.contrasenia}"><br>
		<g:actionSubmit controller="login" action="sumar" value="Entrar"/>
	</form>
</body>
</html>