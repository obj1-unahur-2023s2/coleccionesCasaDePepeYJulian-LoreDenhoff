

object cuentaCorriente {
	var saldo = 0
	
	method depositar(importe) {saldo+= importe} 
	method extraer(importe) {saldo-= importe} 
	method saldo() = 0.max(saldo)
}

object cuentaConGastos {
	var saldo = 0
	
	method depositar(importe) {saldo+= (importe-200)} 
	method extraer(importe) {if (importe <= 10000) saldo-= (importe+200) else saldo-= importe+(importe*0.02)}
	method saldo() = saldo
}

object cuentaCombinada {
	const cuentaPrimaria = cuentaCorriente
	const cuentaSecundaria = cuentaConGastos
	var saldo = cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
	
	
	method depositar(importe) {cuentaPrimaria.depositar(importe)} 
	method extraer1(importe) {if (cuentaPrimaria.saldo() > importe) cuentaPrimaria.extraer(importe) else cuentaSecundaria.extraer(importe)}
	
	method extraer (importe) {
	var resto = (cuentaPrimaria.saldo() - importe).abs()
	
		if (importe <= cuentaPrimaria.saldo()){ 
			cuentaPrimaria.extraer(importe)

		}
		else {
			console.println(resto)
			cuentaSecundaria.extraer(resto)  
			cuentaPrimaria.extraer(importe)
		}
	}
	method saldo() = saldo
	
}