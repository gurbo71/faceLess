import usuarios.*

class Publicacion {
	var meGusta = 0
		
	method meGusta(usuario) {
		meGusta++
	}
	
	method cuantasVecesFueVotada(sel) {}

}

class Fotos inherits Publicacion {
	var alto
	var ancho
	
	constructor (_alto, _ancho) {
		alto = _alto
		ancho = _ancho
	}
	
	method espacio() {
		return factorCompresion.fotos() * alto * ancho
	}
	
}

class Textos inherits Publicacion {
	var cantCaracteres
	
	constructor (caracteres) {
		cantCaracteres = caracteres
	}

	method espacio() {
		return cantCaracteres
	}	
}

class Videos inherits Publicacion {
	var calidad
	var duracion
	
	constructor (_calidad, segundos) {
		calidad = _calidad
		duracion = segundos
	}

	method espacio() {
		return if (calidad == "SD"){
			duracion
		}else if (calidad == "HD"){
			duracion*3
		}else{
			self.error("La calidad ingresada es incorrecta (SD o HD)")
		}
	}	
}




object factorCompresion {
	method fotos() {
		return 0.7
	}
}

object calidades {
	var segundos
		
	method videoSD() {
		return segundos
	}
	
	method videoHD() {
		return segundos*3
	}
	
}