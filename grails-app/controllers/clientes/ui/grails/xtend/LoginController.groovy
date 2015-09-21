package clientes.ui.grails.xtend

import ar.algo.adriba.appModel.LoginAppModel
import ar.algo.adriba.appModel.UltimasConsultasAppModel
import ar.algo.adriba.appModel.UsuariosObjectSet

class LoginController {
		
	static scope = "session"
	
	static allowedMethods = [
		sumar: 'POST'
	]
	
	def login = new LoginAppModel()
	def consultas

	def index() { 
		[login: login]
	}
	
	def sumar() {
		login.nombreUsuarioABuscar = new String(params.usuario)
		login.contrasenia = new String(params.contrasenia)
		this.iniciar()
		login.autorizarLogin()
		consultas = new UltimasConsultasAppModel(login.usuarioLogin)
		consultas.initSearch()
		[consultas:consultas]
	}
	
	def iniciar(){
		//usuario = RecetasObjectSet.INSTANCE.crearUsuario()
		UsuariosObjectSet.INSTANCE.crearUsuarios()
		//RecetasObjectSet.INSTANCE.crearRecetas()

		}
	
	
}
