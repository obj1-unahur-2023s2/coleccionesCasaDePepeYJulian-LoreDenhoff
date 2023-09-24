import cosas.* 
import cuentaBancaria.*

object casaDePepeYJulian {
	const cosas = []

	method comprar(cosa) { cosas.add(cosa) cuentaCombinada.extraer(cosa.precio())} 
	method cantidadDeCosasCompradas()= cosas.size()
	method tieneComida() = cosas.any({c => c.esComida()})
	method vieneDeEquiparse() = cosas.last().precio()>50000 or cosas.last().esElectrodomestico() 
	method esDerrochona() = cosas.sum({c => c.precio()})>= 90000
	method compraMasCara() = cosas.max({c => c.precio()})
	method electrodomesticosComprados() = cosas.filter({c => c.esElectrodomestico()})
	method malaEpoca() = cosas.all({c => c.esComida()})
	method queFaltaComprar(lista) = lista.asSet().difference(cosas.asSet())
	method faltaComida() = (self.cantidadDeCosasCompradas() - self.electrodomesticosComprados().size()) <=2 
	method gastar(importe){ cuentaCombinada.extraer(importe)}
	method dineroDisponible() = cuentaCombinada.saldo()

}



