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
		def errorMessage = null
		login.nombreUsuarioABuscar = new String(params.usuario)
		login.contrasenia = new String(params.contrasenia)
		this.iniciar()
		
		try{
		login.autorizarLogin()}
		catch(Exception e){
			errorMessage = "Usuario o contraseña incorrectos"
		}
		render (view: "index", model: [login: login, errorMessage: errorMessage])
		
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
