package ar.algo.adriba.appModel

import ar.algo.adriba.tp1.Persona
import ar.algo.adriba.tp1.Receta
import ar.algo.adriba.tp1.Usuario
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class DetalleDeRecetaAppModel {
	Receta unaReceta
	Persona unUsuario

	new(Receta receta, Usuario usuario) {
		unaReceta = receta
		unUsuario = usuario

	}

	def void setFavorita(boolean recetaFavorita) {
		if (recetaFavorita) {
			unUsuario.marcarComoFavorita(unaReceta)
		} else {
			unUsuario.desmarcarComoFavorita(unaReceta)
		}
	}

	def boolean getFavorita() {
		unUsuario.esRecetaFavorita(unaReceta)
	}

	def String getPropietario() {
		unUsuario.sosDuenioDe(unaReceta)
	}

}
