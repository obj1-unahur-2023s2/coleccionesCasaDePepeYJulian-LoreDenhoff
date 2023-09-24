// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() = 200000
	method esComida() = false
	method esElectrodomestico() = true 	
}

object cama {
	method precio() = 80000 
	method esComida() = false 
	method esElectrodomestico() = false 
}

object tiraDeAsado {
	method precio() = 3500 
	method esComida() = true 
	method esElectrodomestico() = false 	
}

object paqueteDeFideos {
	method precio() = 500 
	method esComida() = true 
	method esElectrodomestico() = false 	
}

object plancha {
	method precio() = 12000 
	method esComida() = false 
	method esElectrodomestico() = true 	
}

object milanesaRebozada {
	method precio() = 2600
	method esComida() = true 
	method esElectrodomestico() = false	
}

object salsaDeTomate {
	method precio() = 900
	method esComida() = true 
	method esElectrodomestico() = false	
}

object microondas {
	method precio() = 42000 
	method esComida() = false 
	method esElectrodomestico() = true 	
}

object cebolla {
	method precio() = 250 
	method esComida() = true
	method esElectrodomestico() = false 	
}

object dolar{
	var property precioDeVenta = 0 
}

object computadora {
	method precio() = 500*dolar.precioDeVenta()
	method esComida() = false 
	method esElectrodomestico() = true 	
}

object packComida{
	var property plato 
	var property aderezo 
	
	method precio() = plato.precio() + aderezo.precio()
	method esComida() = true 
	method esElectrodomestico() = false 	
}


