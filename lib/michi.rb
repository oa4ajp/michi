class Michi

	def initialize
		@posiciones = ["", "", "", "", "", "", "", "", ""]
		@efectos = [rand(0...4), rand(0...4), rand(0...4), rand(0...4), rand(0...4), rand(0...4), rand(0...4), rand(0...4), rand(0...4)]
		@mensaje = ""
		@ronda = 1
		@puntaje_a = 0
		@puntaje_b = 0
		@turno = "A"
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

	def pos_6
		@posiciones[6]
	end

	def pos_7
		@posiciones[7]
	end

	def pos_8
		@posiciones[8]
	end


	def mostrar_puntaje_a
		@puntaje_a
	end

	def mostrar_puntaje_b
		@puntaje_b
	end

	def mostrar_mensaje
		@mensaje
	end

	def mostrar_ronda
		"Ronda " + @ronda.to_s
	end

	def mostrar_puntaje
		@puntaje_a.to_s + " - " + @puntaje_b.to_s
	end

	def mostrar_jugador
		"Turno de Jugador " + @turno
	end

	def mostrar_turno
		@turno
	end

	def mostrar_simbolo_a
		"X"
	end

	def mostrar_simbolo_b
		"O"
	end

	def rotar_turno
		if(@turno == "A")
			@turno = "B"
		else
			@turno = "A"
		end
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

	def iniciar_efectos (efe0, efe1, efe2, efe3, efe4, efe5, efe6, efe7, efe8)
		@efectos = [efe0, efe1, efe2, efe3, efe4, efe5, efe6, efe7, efe8]
	end

	def obtener_efecto posicion
		@efectos[posicion]
	end

	def verificar_ganador
		if (@posiciones[0] == "X" &&  @posiciones[1] == "X" && @posiciones[2] == "X")
			return "El ganador es el Jugador A"
		elsif (@posiciones[3] == "X" &&  @posiciones[4] == "X" && @posiciones[5] == "X")
				return "El ganador es el Jugador A"
		elsif (@posiciones[6] == "X" &&  @posiciones[7] == "X" && @posiciones[8] == "X")
				return "El ganador es el Jugador A"

		elsif (@posiciones[0] == "X" &&  @posiciones[3] == "X" && @posiciones[6] == "X")
			return "El ganador es el Jugador A"
		elsif (@posiciones[1] == "X" &&  @posiciones[4] == "X" && @posiciones[7] == "X")
				return "El ganador es el Jugador A"
		elsif (@posiciones[2] == "X" &&  @posiciones[5] == "X" && @posiciones[8] == "X")
				return "El ganador es el Jugador A"

		elsif (@posiciones[0] == "X" &&  @posiciones[4] == "X" && @posiciones[8] == "X")
				return "El ganador es el Jugador A"
		elsif (@posiciones[2] == "X" &&  @posiciones[4] == "X" && @posiciones[6] == "X")
				return "El ganador es el Jugador A"


		elsif (@posiciones[0] == "O" &&  @posiciones[1] == "O" && @posiciones[2] == "O")
			return "El ganador es el Jugador B"
		elsif (@posiciones[3] == "O" &&  @posiciones[4] == "O" && @posiciones[5] == "O")
			return "El ganador es el Jugador B"
		elsif (@posiciones[6] == "O" &&  @posiciones[7] == "O" && @posiciones[8] == "O")
			return "El ganador es el Jugador B"

		elsif (@posiciones[0] == "O" &&  @posiciones[3] == "O" && @posiciones[6] == "O")
			return "El ganador es el Jugador B"
		elsif (@posiciones[1] == "O" &&  @posiciones[4] == "O" && @posiciones[7] == "O")
				return "El ganador es el Jugador B"
		elsif (@posiciones[2] == "O" &&  @posiciones[5] == "O" && @posiciones[8] == "O")
				return "El ganador es el Jugador B"

		elsif (@posiciones[0] == "O" &&  @posiciones[4] == "O" && @posiciones[8] == "O")
				return "El ganador es el Jugador B"
		elsif (@posiciones[2] == "O" &&  @posiciones[4] == "O" && @posiciones[6] == "O")
				return "El ganador es el Jugador B"

		else
			@esEmpate = true
			@posiciones.each do |valor|
				if (valor == "")
					@esEmpate = false
				end
			end
			if (@esEmpate == true)
				return "El juego queda empatado"
			end
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
		@posiciones = ["", "", "", "", "", "", "", "", ""]
		@mensaje = "Juego Reiniciado"
		@turno = "A"
	end

end
