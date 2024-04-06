object lobo {
	
	var peso = 10
	
	method estaSaludable() = peso.between(20, 150)
	
	method cambiarPeso(pesoNuevo) {
		peso = pesoNuevo
	}
	
	method sufrirCrisis() {
		peso = 10
	}
	
	method comer(comida) {
		peso += comida.pesoActual() * 0.1
	}
	
	method correr() {
		peso -= 1
	}
	
	method soplar(casa) {
		peso -= casa.resistenciaActual()
	}
	
}

object caperucita {
	
	var peso = 60
	
	method pesoActual() = return peso
	
}

object canasta {
	
	// VARIABLE PESO NO CAMBIA LUEGO DE REALIZAR EL METODO
	// perderManzanas() ??????????
	
	var peso = cantidadManzanas * manzana.pesoActual()
	var cantidadManzanas = 6
	
	method perderManzanas(manzana) {
		cantidadManzanas -= manzana
		peso = cantidadManzanas * manzana.pesoActual()
	}
	
	method pesoActual() = return peso
	
}

object manzana {
	
	var peso = 0.2
	
	method pesoActual() = return peso
}

object abuelita {
	
	const peso = 50
	
	method pesoActual() = return peso

}


object cazador {
	
	const peso = 100
	
	method pesoActual() = return peso
	
}

// EL LOBO TERMINA SALUDABLE SI SE COME AL CAZADOR

// EL LOBO NO TERMINA SALUDABLE SI SUFRE UNA CRISIS

// INCLUSO SI LA CANASTA ESTABA VACIA, EL LOBO TERMINA SALUDABLE

// --------------------LOS CHANCHITOS-------------------

object chanchito {
	
	const peso = 50
	
	method pesoActual() = return peso
	
}

object casaPaja {
	
	var ocupantes = 1
	var resistencia = 0 + (ocupantes * chanchito.pesoActual())
	
	method resistenciaActual() = return resistencia
	
}

object casaMadera {
	
	var ocupantes = 1
	var resistencia = 5 + (ocupantes * chanchito.pesoActual())
	
	
	method resistenciaActual() = return resistencia
	
	method recibirChanchitos(cantChanchito) {
		ocupantes += cantChanchito
		resistencia = 5 + (ocupantes * chanchito.pesoActual())
	}
	
}

object casaLadrillo {
	
	var ocupantes = 1
	var ladrillos = 20
	var resistencia = (ladrillos * ladrillo.pesoActual()) + (ocupantes * chanchito.pesoActual())
	
	method resistenciaActual() = return resistencia
	
	method recibirChanchitos(cantChanchito) {
		ocupantes += cantChanchito
		resistencia = (ladrillos * ladrillo.pesoActual()) + (ocupantes * chanchito.pesoActual())
	}
	
	method cambiarLadrillos(cantLadrillos) {
		ladrillos = cantLadrillos
		resistencia = (ladrillos * ladrillo.pesoActual()) + (ocupantes * chanchito.pesoActual())
	}
	
}

object ladrillo {
	
	var peso = 2
	
	method pesoActual() = return peso
}

// CON EL PESO INICIAL DEL LOBO, NUNCA ESTARA SALUDABLE DEBIDO A QUE SU PESO ES MUY BAJO
// Y NUNCA LLEGARA A ESTAR SALUDABLE

