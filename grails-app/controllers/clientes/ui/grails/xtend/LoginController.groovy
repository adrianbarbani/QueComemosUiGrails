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
	def consultas

	def index() { 
		[calculadora: calculadora]
	}
	
	def sumar() {
		calculadora.nombreUsuarioABuscar = new String(params.numero1)
		calculadora.contrasenia = new String(params.numero2)
		this.iniciar()
		calculadora.autorizarLogin()
		consultas = new UltimasConsultasAppModel(calculadora.usuarioLogin)
		consultas.initSearch()
		[consultas:consultas]
	}
	
	def iniciar(){
		//usuario = RecetasObjectSet.INSTANCE.crearUsuario()
		UsuariosObjectSet.INSTANCE.crearUsuarios()
		//RecetasObjectSet.INSTANCE.crearRecetas()

		}
	
	
}
