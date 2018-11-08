import publicaciones.*

class Usuario {
	var property publicaciones = []
	var property amigos = #{}
	
	method agregarPublicacion(publicacion) {
		publicaciones.add(publicacion)
	}
	
	method darMeGusta(publicacion) {
		publicacion.meGusta(self)
	}
	
	method agregarAmigo(amigo) {
		amigos.add(amigo)
	}
}
