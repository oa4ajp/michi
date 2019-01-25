class Michi

	def initialize
		@posiciones = ["", "", "","", "", ""]
		@mensaje = ""
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

	def pos_3
		@posiciones[3]
	end

	def pos_4
		@posiciones[4]
	end

	def pos_5
		@posiciones[5]
	end

	def puntaje_a
		0
	end

	def puntaje_b
		0
	end

	def mostrar_mensaje
		@mensaje
	end

	def marcar_casilla (jugador, posicion)
		valor=""
		if (jugador=="A")
			valor="X"
		elsif (jugador=="B")
			valor="O"
		end
		@posiciones[posicion] = valor
	end

	def verificar_ganador
		if (@posiciones[0] == "X" &&  @posiciones[1] == "X" && @posiciones[2] == "X")
			return "El ganador es el Jugador A"
		elsif (@posiciones[3] == "X" &&  @posiciones[4] == "X" && @posiciones[5] == "X")
				return "El ganador es el Jugador A"			
		elsif (@posiciones[0] == "O" &&  @posiciones[1] == "O" && @posiciones[2] == "O")
			return "El ganador es el Jugador B"
		elsif (@posiciones[3] == "O" &&  @posiciones[4] == "O" && @posiciones[5] == "O")
			return "El ganador es el Jugador B"			
		end
		return ""
	end

	def validar_casilla (posicion)
		if @posiciones[posicion] != ""
			@mensaje = "La casilla ya ha sido marcada"
			return false
		end
		@mensaje = ""
		return true
	end

	def reiniciar
		@posiciones = ["", "", "", "", "", ""]
		@mensaje = "Juego Reiniciado"
	end

end
