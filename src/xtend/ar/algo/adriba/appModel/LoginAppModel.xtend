package ar.algo.adriba.appModel

import ar.algo.adriba.tp1.RepoDeUsuariosMock
import ar.algo.adriba.tp1.Usuario
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class LoginAppModel {

	String nombreUsuarioABuscar
	String contrasenia
	Usuario usuarioLogin
	
	def autorizarLogin() {
		RepoDeUsuariosMock.getInstance.compararContrasenia(nombreUsuarioABuscar,contrasenia)
		usuarioLogin= RepoDeUsuariosMock.getInstance.obtenerUsuario(nombreUsuarioABuscar)
	}
	
	def clear(){
		nombreUsuarioABuscar = null
		contrasenia = null
	}
}