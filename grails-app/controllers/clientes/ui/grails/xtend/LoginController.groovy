package clientes.ui.grails.xtend

import ar.algo.adriba.appModel.CopiarRecetaAppModel
import ar.algo.adriba.appModel.DetalleDeRecetaAppModel
import ar.algo.adriba.appModel.LoginAppModel
import ar.algo.adriba.appModel.UltimasConsultasAppModel
import ar.algo.adriba.appModel.UsuariosObjectSet
import ar.algo.adriba.tp1.Busqueda
import ar.algo.adriba.tp1.RepoDeTemporadas
import ar.algo.adriba.tp1.RepoDificultades
import ar.algo.adriba.tp1.Usuario

class LoginController {

	static scope = "session"

	static allowedMethods = [
		sumar: 'POST'
	]
	
	Usuario usuarioLogueado
	CopiarRecetaAppModel copiarReceta
	def busqueda
	def busquedaPorParametros
	def login = new LoginAppModel()
	def consultas
	def repoDeDificultades = new RepoDificultades()
	def repoDeTemporadas= new RepoDeTemporadas()
	
	
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

		usuarioLogueado = login.usuarioLogin
		consultas = new UltimasConsultasAppModel(usuarioLogueado)
		consultas.initSearch()
		[consultas:consultas, repoDeDificultades:repoDeDificultades, repoDeTemporadas:repoDeTemporadas]
	}

	def showReceta(String id){
		busqueda = new Busqueda(usuarioLogueado)
		def detalleReceta = new DetalleDeRecetaAppModel(busqueda.buscarRecetaPorNombre(id),usuarioLogueado)
		[Receta:detalleReceta]
	}
	
	def copiarLaReceta(String id){ 
		busqueda = new Busqueda(usuarioLogueado)
		copiarReceta = new CopiarRecetaAppModel (busqueda.buscarRecetaPorNombre(id), usuarioLogueado)
		[Receta:copiarReceta]
	}
	
	def copiar(){
		copiarReceta.nombreDeCopia = params.nombreDeCopia
		copiarReceta.copiarReceta()
		
		consultas = new UltimasConsultasAppModel(usuarioLogueado)
		consultas.initSearch()
		
		render(view: "sumar", model:[consultas:consultas, repoDeDificultades:repoDeDificultades, repoDeTemporadas:repoDeTemporadas])
	}
	
	def volver(){
		consultas = new UltimasConsultasAppModel(usuarioLogueado)
		consultas.initSearch()
		render(view: "sumar", model:[consultas:consultas, repoDeDificultades:repoDeDificultades, repoDeTemporadas:repoDeTemporadas])
	}

	def buscarPorParametros(){
		consultas = new UltimasConsultasAppModel(usuarioLogueado)
		consultas.caloriasDesde = params.caloriasDesde? new Integer (params.caloriasDesde):0
		consultas.caloriasHasta = params.caloriasHasta? new Integer(params.caloriasHasta):0
		consultas.nombre= params.nombreReceta
		consultas.dificultadSeleccionada=params.dificultad
		consultas.temporadaSeleccionada=params.temporada
		consultas.ingredienteABuscar= params.ingrediente
		consultas.buscar()
		
	
		render(view:"sumar", model:[consultas:consultas, repoDeDificultades:repoDeDificultades, repoDeTemporadas:repoDeTemporadas])
	}
	
	
	def iniciar(){
		UsuariosObjectSet.INSTANCE.crearUsuarios()
	}
}
