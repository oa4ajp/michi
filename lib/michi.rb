class Michi

	def initialize
		@posiciones = ["", "", ""]
		@mensaje_error = ""
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

	def mostrar_error
		@mensaje_error
	end

	def marcar_casilla (jugador, posicion)
		valor=""
		if (jugador=="A")
			valor="X"
		end
		@posiciones[posicion] = valor
	end

	def verificar_ganador
		if (@posiciones[0] == "X" &&  @posiciones[1] == "X" && @posiciones[2] == "X")
			return "El ganador es el Jugador A"
		end
		return ""
	end

	def validar_casilla (posicion)
		if @posiciones[posicion] != ""
			@mensaje_error = "La casilla ya ha sido marcada"
			return false
		end
		@mensaje_error = ""
		return true
	end	

end
