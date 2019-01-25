class Michi

	def initialize
		@posiciones = ["0", "0", "0"]
	end

	def pos_0
		@posiciones[0]
	end

	def pos_1
		@posiciones[1]
	end

	def pos_2
		@posiciones[2]
	end

	def puntaje_a
		0
	end

	def marcar_casilla (jugador, posicion)
		@posiciones[posicion] = jugador
	end

end
