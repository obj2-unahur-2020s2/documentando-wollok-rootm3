class Plaga {
	var property poblacion //es un int
	
	method transmiteEnfermedad() = poblacion >= 10 //es un boolean
	
	method atacar(elemento){  //Hogar|Mascota|Huerta
		poblacion *= 1.1
		elemento.fueAtacado(self) //devuelve nada
	}
}

class PlagaCucaracha inherits Plaga { //herencia de plaga

	var property pesoPromedio //es un int

	method nivelDanio() { //retorna un int
		return poblacion / 2
	}

	override method transmiteEnfermedad() { //devuelve un boolean
		return super() and pesoPromedio >= 10
	}

	override method atacar(elemento) { //no devuelve nada //Hogar|Mascota|Huerta
		super(elemento)
		pesoPromedio += 2
	}

}

class PlagaMosquito inherits Plaga { //herencia de plaga

	method nivelDanio() { //devuelve un int
		return poblacion
	}

	override method transmiteEnfermedad() { //devuelve un bool y sobrescribe
		return super() and poblacion % 3 == 0
	}

}

class PlagaPulgas inherits Plaga { //herencia de plaga

	method nivelDanio() = poblacion * 2 //es un int

}

class PlagaGarrapatas inherits PlagaPulgas { //herencia de pulgas

	override method atacar(elemento) { //sobrecribe metodo, no devuelve nada
		poblacion *= 1.2
		elemento.fueAtado(self)
	}

}

