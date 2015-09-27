package clientes.ui.grails.xtend

import ar.algo.adriba.appModel.CopiarRecetaAppModel
import ar.algo.adriba.appModel.DetalleDeRecetaAppModel
import ar.algo.adriba.appModel.LoginAppModel
import ar.algo.adriba.appModel.UltimasConsultasAppModel
import ar.algo.adriba.appModel.UsuariosObjectSet
import ar.algo.adriba.tp1.Busqueda

class LoginController {

	static scope = "session"

	static allowedMethods = [
		sumar: 'POST'
	]
	
	CopiarRecetaAppModel copiarReceta
	def busqueda
	def login = new LoginAppModel()
	//def copiarReceta = new CopiarRecetaAppModel()
	def consultas


	def index() {
		[login: login]
	}

	def sumar() {
		def errorMessage = null
		login.nombreUsuarioABuscar = params.usuario
		login.contrasenia =params.contrasenia
		this.iniciar()

		try{
			login.autorizarLogin()
		}
		catch(Exception e){
			flash.message = "Usuario o Contrasenia Incorrecto"
			redirect(action: "index")
		}

		consultas = new UltimasConsultasAppModel(login.usuarioLogin)
		consultas.initSearch()
		[consultas:consultas]
	}

	def showReceta(String id){
		busqueda = new Busqueda(login.usuarioLogin)
		def detalleReceta = new DetalleDeRecetaAppModel(busqueda.buscarRecetaPorNombre(id),login.usuarioLogin)
		[Receta:detalleReceta]
	}
	
	def copiarLaReceta(String id){ 
		busqueda = new Busqueda(login.usuarioLogin)
		copiarReceta = new CopiarRecetaAppModel (busqueda.buscarRecetaPorNombre(id), login.usuarioLogin)
		[Receta:copiarReceta]
	}
	
	def copiar(String id){
		copiarReceta.nombreDeCopia = id
		copiarReceta.copiarReceta()
		
		consultas = new UltimasConsultasAppModel(login.usuarioLogin)
		consultas.initSearch()
		
		render(view: "sumar", model: [consultas:consultas])
	}
	
	def volver(){
		consultas = new UltimasConsultasAppModel(login.usuarioLogin)
		consultas.initSearch()
		render(view: "sumar", model: [consultas:consultas])
	}

	def iniciar(){
		UsuariosObjectSet.INSTANCE.crearUsuarios()
	}
}
