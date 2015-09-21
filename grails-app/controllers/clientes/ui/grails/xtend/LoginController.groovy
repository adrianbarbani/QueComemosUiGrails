package clientes.ui.grails.xtend

import ar.algo.adriba.appModel.LoginAppModel
import ar.algo.adriba.appModel.UltimasConsultasAppModel
import ar.algo.adriba.appModel.UsuariosObjectSet

class LoginController {
		
	static scope = "session"
	
	static allowedMethods = [
		sumar: 'POST'
	]
	
	def calculadora = new LoginAppModel()
	def usuario
	
	def index() { 
		[calculadora: calculadora]
	}
	
	def sumar() {
		calculadora.nombreUsuarioABuscar = new String(params.numero1)
		calculadora.contrasenia = new String(params.numero2)
		this.iniciar()
		calculadora.autorizarLogin()
		def consultas = new UltimasConsultasAppModel(calculadora.usuarioLogin)
	}
	
	def iniciar(){
		//usuario = RecetasObjectSet.INSTANCE.crearUsuario()
		UsuariosObjectSet.INSTANCE.crearUsuarios()
		//RecetasObjectSet.INSTANCE.crearRecetas()

		}
	
	
}
