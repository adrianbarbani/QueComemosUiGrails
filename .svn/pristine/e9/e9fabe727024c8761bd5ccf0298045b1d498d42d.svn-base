package ar.edu.clientes

import java.math.BigDecimal

class CriterioConservador implements CriterioCredito {
	
	override getLimiteCredito(Cliente cliente) {
		var base = cliente.ingresos 
		if (cliente.esMoroso) {
			base = cliente.saldo
		} 
		base = base * new BigDecimal("0.1")
		base.setScale(2)
		base
	}
	
}