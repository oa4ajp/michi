class Michi

	def initialize
		@posiciones = ["", "", ""]
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
		valor=""
		if (jugador=="A")
			valor="X"
		end
		@posiciones[posicion] = valor
	end

end
