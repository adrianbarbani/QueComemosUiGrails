package ar.edu.clientes.homes

import ar.edu.clientes.Cliente
import ar.edu.clientes.CriterioArriesgado
import ar.edu.clientes.CriterioConservador
import ar.edu.clientes.Factura
import ar.edu.clientes.busqueda.ClienteBusqueda

class HomeClientes {

	def clientes

	static def instance
	
	static def getInstance() {
		if (instance == null) {
			instance = new HomeClientes()
		}
		instance
	}
	
	HomeClientes() {
		clientes = generarClientes()
	}

	def getClientes(ClienteBusqueda clienteBusqueda) {
		clientes.findAll {
			cliente -> clienteBusqueda.cumple(cliente)
		}
	}
		
	def generarClientes() {
		[
			new Cliente(nombre: "Swiss medical", ingresos: 50000, facturas: [
				new Factura(monto: 1000, pagado: 750)
			]),
			new Cliente(nombre: "SIEMENS", ingresos: 10000, criterioCredito: new CriterioArriesgado()),
			new Cliente(nombre: "Jodor S.A.", ingresos: 4000, criterioCredito: new CriterioConservador()),
			new Cliente(nombre: "Matanga Hermanos", ingresos: 10000, facturas: [
				new Factura(monto: 550, pagado: 0),
				new Factura(monto: 1460, pagado: 60)
			], criterioCredito: new CriterioConservador())
		]
	}
}
