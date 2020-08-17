class Barrio {
	
	//Lista:  Huerta, Mascota y Hogar
	const property elementos = []
	
	//No devuelve nada solo agrega obj a la lista elementos (seria un void en java)
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}

	//Lo mismo que arriba pero al revés
	method sacarElemento(elemento) {
		elementos.remove(elemento)
	}

	//retorna un int que cumplan con la codicion
	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}

	//retona un int
	method elementosMalos() = elementos.count{ e => not e.esBueno() }

	//retorna un boolean
	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}

}

