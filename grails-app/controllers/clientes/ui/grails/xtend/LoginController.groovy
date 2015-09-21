package clientes.ui.grails.xtend

import ar.algo.adriba.appModel.LoginAppModel

class LoginController {
	
	static scope = "session"
	
	static allowedMethods = [
		sumar: 'POST'
	]
	
	def calculadora = new LoginAppModel()
	
	def index() { 
		[calculadora: calculadora]
	}
	
	def sumar() {
		calculadora.nombreUsuarioABuscar = new String(params.numero1)
		calculadora.contrasenia = new String(params.numero2)
		calculadora.autorizarLogin()
		[calculadora: calculadora]
	}

}
