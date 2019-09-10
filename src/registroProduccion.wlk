object registroProduccion {
	var produccionPorDia = [53,18,49,62,33,39]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	
	//no es la mejor forma, sirve para usar el any
	method algunDiaSeProdujo(cantidad){
		return produccionPorDia.any({p=>p == cantidad})
		
	}
	
	method algunDiaSeProdujoCheto(cantidad){
		return produccionPorDia.contains(cantidad)
	}
	
	method maximoValorDeProduccion(){
		return produccionPorDia.max()
		
	}
	
	method valoresDeProduccionPares(){
		return produccionPorDia.filter({ p => p.even()})
	}
	
	method valoresDeProduccionPares2(){
		// que cumplan UNA condicion = Filter
		return produccionPorDia.filter({ p => p % 2 == 0})
	}
	
	
	
	method produccionEsAcotada(n1,n2){
		// que Todos cumplan una condicion
		return produccionPorDia.all({p => p.between(n1,n2)})
	}
	
	method produccionesSuperioresA(cuanto){
		return produccionPorDia.filter({p => p > cuanto})
	}
	
	method produccionesSumando(n){
		return produccionPorDia.map({p => p + n})
		
	}
	
	method totalProducido(){
		return produccionPorDia.sum()
	}
	
	method ultimoValorDeProduccion(){
		return produccionPorDia.last()
	}
	
	method cantidadProduccionesMayorALaPrimera(){
		//cuantos elementos cumplen una condicion : count
		return produccionPorDia.count({ p => p > produccionPorDia.first() })
	}
	
	method cantidadProduccionesMayorALaPrimera2(){
		//cuantos elementos cumplen una condicion : count
		var laPrimera = produccionPorDia.first()
		return produccionPorDia.count({ p => p > laPrimera })
	}
	
	

	
	
	
	
	
	
}
