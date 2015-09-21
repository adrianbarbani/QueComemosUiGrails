package ar.algo.adriba.tp1

import ar.algo.adriba.tp1.CondicionPreexistente

class Hipertenso extends CondicionPreexistente {

	
	new(){
		nombre=("Hipertenso")
	}
	
	override validacion(Usuario unUsuario) {
		unUsuario.tamanioPreferencias() > 0
	}

	override loSatisface(Usuario unUsuario) {	
	unUsuario.tenesUnaRutinaActivaIntensivaConEjercicioAdicional()
	}
	
	override sosInadecuada(Receta unaReceta){
		unaReceta.tenesSalOCaldo()
	}
}
