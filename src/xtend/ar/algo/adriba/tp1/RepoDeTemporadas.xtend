package ar.algo.adriba.tp1

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class RepoDeTemporadas {
	static RepoDeTemporadas repositorio = null

	List<String> todasLasTemporadas = new ArrayList<String>

	

	public new() {
		todasLasTemporadas => [
			add("Todo el año")
			add("Otoño")
			add("Invierno")
			add("Verano")
			add("Primavera")
		]
	}

	static public def RepoDeTemporadas getInstance() {
		if (repositorio == null) {
			repositorio = new RepoDeTemporadas()
		}
      repositorio;
	}
}
