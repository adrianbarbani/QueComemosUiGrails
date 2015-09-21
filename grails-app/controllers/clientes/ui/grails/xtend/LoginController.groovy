package clientes.ui.grails.xtend

import ar.algo.adriba.appModel.LoginAppModel
import ar.algo.adriba.appModel.UsuariosObjectSet
import ar.algo.adriba.tp1.Usuario

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
		this.iniciar()
		calculadora.autorizarLogin()
		[calculadora: calculadora]
	}

	def iniciar(){
		//Usuario usuario = RecetasObjectSet.INSTANCE.crearUsuario
		UsuariosObjectSet.INSTANCE.crearUsuarios()
		//RecetasObjectSet.INSTANCE.crearRecetas(usuario)
	}
}
