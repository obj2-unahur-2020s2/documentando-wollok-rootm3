class Hogar {

	var property nivelMugre //es un int
	var property confort //es un int

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 
	method esBueno() = nivelMugre <= confort / 2 //es un boolean

	method fueAtacado(plaga) { //no devuelve nada //por cualquiera de los 3 tipos de plaga
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {

	var property nivelSalud //es un int

	method fueAtacado(plaga) { //no devuelve nada //idem arriba
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}

	method esBueno() = nivelSalud > 250 //es un boolean

}

class Huerta {

	var property capacidadProduccion //es un int

	method esBueno() { //retorna un boolean
		return capacidadProduccion > INTA.produccionMinima()
	}

	method fueAtacado(plaga) { //no devuelve nada //idem arriba
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}

}

object INTA {

	var property produccionMinima //es un int

}

