require "./lib/michi.rb"

describe "Michi" do
	it ("Inicio de juego tablero sin marcar") do
		juego=Michi.new
		expect( juego.pos_0 ).to eq ""
		expect( juego.pos_1 ).to eq ""
		expect( juego.pos_2 ).to eq ""
		expect( juego.pos_3 ).to eq ""
		expect( juego.pos_4 ).to eq ""
		expect( juego.pos_5 ).to eq ""
		expect( juego.pos_6 ).to eq ""
		expect( juego.pos_7 ).to eq ""
		expect( juego.pos_8 ).to eq ""		
	end

	it ("Inicio de juego puntaje jugador A") do
		juego=Michi.new
		expect( juego.mostrar_puntaje_a ).to eq 0
	end

	it ("Jugador A marca pos 0") do
		juego=Michi.new
		juego.marcar_casilla("A",0)
		expect( juego.pos_0 ).to eq "X"
	end

	it ("Jugador A marca pos 1") do
		juego=Michi.new
		juego.marcar_casilla("A",1)
		expect( juego.pos_1 ).to eq "X"
	end

	it ("Jugador A marca pos 2") do
		juego=Michi.new
		juego.marcar_casilla("A",2)
		expect( juego.pos_2 ).to eq "X"
	end

	it ("Jugador A gana fila 1") do
		juego=Michi.new
		juego.marcar_casilla("A",0)
		juego.marcar_casilla("A",1)
		juego.marcar_casilla("A",2)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador A"
	end

	it ("Jugador A gana fila 2") do
		juego=Michi.new
		juego.marcar_casilla("A",3)
		juego.marcar_casilla("A",4)
		juego.marcar_casilla("A",5)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador A"
	end

	it ("Jugador A gana fila 3") do
		juego=Michi.new
		juego.marcar_casilla("A",6)
		juego.marcar_casilla("A",7)
		juego.marcar_casilla("A",8)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador A"
	end	
	
	it ("Jugador A gana columna 1") do
		juego=Michi.new
		juego.marcar_casilla("A",0)
		juego.marcar_casilla("A",3)
		juego.marcar_casilla("A",6)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador A"
	end

	it ("Jugador A gana columna 2") do
		juego=Michi.new
		juego.marcar_casilla("A",1)
		juego.marcar_casilla("A",4)
		juego.marcar_casilla("A",7)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador A"
	end

	it ("Jugador A gana columna 3") do
		juego=Michi.new
		juego.marcar_casilla("A",2)
		juego.marcar_casilla("A",5)
		juego.marcar_casilla("A",8)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador A"
	end	


	it ("Jugador A gana diagonal 1") do
		juego=Michi.new
		juego.marcar_casilla("A",0)
		juego.marcar_casilla("A",4)
		juego.marcar_casilla("A",8)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador A"
	end

	it ("Jugador A gana diagonal 2") do
		juego=Michi.new
		juego.marcar_casilla("A",2)
		juego.marcar_casilla("A",4)
		juego.marcar_casilla("A",6)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador A"
	end


	it ("Jugador A marca pos 0 que esta marcada") do
		juego = Michi.new
		juego.marcar_casilla("A", 0)
		expect( juego.validar_casilla(0) ).to eq false
		expect( juego.mostrar_mensaje ).to eq "La casilla ya ha sido marcada"
	end

	it ("Jugador A marca pos 0 que no esta marcada") do
		juego = Michi.new

		expect( juego.validar_casilla(0) ).to eq true
	end

	it ("Inicio de juego puntaje jugador B") do
		juego=Michi.new
		expect( juego.mostrar_puntaje_b ).to eq 0
	end

	it ("Jugador B marca pos 0") do
		juego=Michi.new
		juego.marcar_casilla("B",0)
		expect( juego.pos_0 ).to eq "O"
	end

	it ("Jugador B marca pos 1") do
		juego=Michi.new
		juego.marcar_casilla("B",1)
		expect( juego.pos_1 ).to eq "O"
	end

	it ("Jugador B marca pos 2") do
		juego=Michi.new
		juego.marcar_casilla("B",2)
		expect( juego.pos_2 ).to eq "O"
	end

	it ("Jugador B marca pos 3") do
		juego=Michi.new
		juego.marcar_casilla("B",3)
		expect( juego.pos_3 ).to eq "O"
	end
	
	it ("Jugador B marca pos 4") do
		juego=Michi.new
		juego.marcar_casilla("B",4)
		expect( juego.pos_4 ).to eq "O"
	end
	
	it ("Jugador B marca pos 5") do
		juego=Michi.new
		juego.marcar_casilla("B",5)
		expect( juego.pos_5 ).to eq "O"
	end	
	
	it ("Jugador B gana fila 1") do
		juego=Michi.new
		juego.marcar_casilla("B",0)
		juego.marcar_casilla("B",1)
		juego.marcar_casilla("B",2)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador B"
	end

	it ("Jugador B gana fila 2") do
		juego=Michi.new
		juego.marcar_casilla("B",3)
		juego.marcar_casilla("B",4)
		juego.marcar_casilla("B",5)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador B"
	end

	it ("Jugador B gana fila 3") do
		juego=Michi.new
		juego.marcar_casilla("B",6)
		juego.marcar_casilla("B",7)
		juego.marcar_casilla("B",8)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador B"
	end	

	it ("Jugador B gana columna 1") do
		juego=Michi.new
		juego.marcar_casilla("B",0)
		juego.marcar_casilla("B",3)
		juego.marcar_casilla("B",6)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador B"
	end

	it ("Jugador B gana columna 2") do
		juego=Michi.new
		juego.marcar_casilla("B",1)
		juego.marcar_casilla("B",4)
		juego.marcar_casilla("B",7)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador B"
	end

	it ("Jugador B gana columna 3") do
		juego=Michi.new
		juego.marcar_casilla("B",2)
		juego.marcar_casilla("B",5)
		juego.marcar_casilla("B",8)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador B"
	end	


	it ("Jugador B gana diagonal 1") do
		juego=Michi.new
		juego.marcar_casilla("B",0)
		juego.marcar_casilla("B",4)
		juego.marcar_casilla("B",8)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador B"
	end

	it ("Jugador B gana diagonal 2") do
		juego=Michi.new
		juego.marcar_casilla("B",2)
		juego.marcar_casilla("B",4)
		juego.marcar_casilla("B",6)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador B"
	end	

	it ("Reiniciar juego") do
		juego=Michi.new
		juego.marcar_casilla("B",0)
		juego.marcar_casilla("B",1)
		juego.marcar_casilla("B",2)
		juego.reiniciar

		expect( juego.pos_0 ).to eq ""
		expect( juego.pos_1 ).to eq ""
		expect( juego.pos_2 ).to eq ""
		expect( juego.pos_3 ).to eq ""
		expect( juego.pos_4 ).to eq ""
		expect( juego.pos_5 ).to eq ""
		expect( juego.pos_6 ).to eq ""
		expect( juego.pos_7 ).to eq ""
		expect( juego.pos_8 ).to eq ""				
	end

	it ("El juego empata") do
		juego=Michi.new
		juego.marcar_casilla("A",0)
		juego.marcar_casilla("B",1)
		juego.marcar_casilla("A",2)
		juego.marcar_casilla("A",3)
		juego.marcar_casilla("B",4)
		juego.marcar_casilla("A",5)
		juego.marcar_casilla("B",6)
		juego.marcar_casilla("A",7)
		juego.marcar_casilla("B",8)
		expect( juego.verificar_ganador ).to eq "El juego queda empatado"
	end

	it ("Mostrar el turno actual de A") do
		juego=Michi.new
		expect( juego.mostrar_ronda ).to eq "Ronda 1"
		expect( juego.mostrar_puntaje ).to eq "0 - 0"
		expect( juego.mostrar_jugador ).to eq "Turno de Jugador A"
		expect( juego.mostrar_simbolo_a ).to eq "X"

	end


	it ("Mostrar el turno actual de B") do
		juego=Michi.new
		juego.marcar_casilla("A",0)
		juego.rotar_turno
		expect( juego.mostrar_ronda ).to eq "Ronda 1"
		expect( juego.mostrar_puntaje ).to eq "0 - 0"
		expect( juego.mostrar_jugador ).to eq "Turno de Jugador B"
		expect( juego.mostrar_simbolo_b ).to eq "O"

	end

	it ("Jugador A selecciona pos 8 y obtiene el efecto de no marcar") do
		juego=Michi.new
		juego.iniciar_efectos(0,0,0,0,0,0,0,0,2)
		expect( juego.obtener_efecto(8) ).to eq 2

	end

	it ("Jugador A selecciona pos 8, obtiene el efecto de no marcar y se resetea el efecto") do
		juego=Michi.new
		juego.iniciar_efectos(0,0,0,0,0,0,0,0,2)
		expect( juego.obtener_efecto(8) ).to eq 2
		juego.resetear_efecto(8)
		expect( juego.obtener_efecto(8)>=0 ).to eq true
		expect( juego.obtener_efecto(8)<=4 ).to eq true

	end
	it ("Jugador A selecciona pos 1 y obtiene el efecto de marcar doble") do
		juego=Michi.new
		juego.iniciar_efectos(0,1,0,0,0,0,0,0,0)
		expect( juego.obtener_efecto(1)).to eq 1
	end	

	it ("Jugador A selecciona pos 3, obtiene el efecto de marcar y borrar") do
		juego=Michi.new
		juego.iniciar_efectos(0,0,0,3,0,0,0,0,0)
		expect( juego.obtener_efecto(3) ).to eq 3

	end

	it ("Jugador B selecciona pos 3, obtiene el efecto de marcar y borrar, y borra la posicion 0") do
		juego=Michi.new
		juego.iniciar_efectos(0,0,0,3,0,0,0,0,0)
		juego.marcar_casilla("A",0)
		expect( juego.pos_0 ).to eq "X"
		juego.marcar_casilla("B",3)
		expect( juego.obtener_efecto(3) ).to eq 3
		juego.rotar_borrado
		juego.marcar_casilla("B",0)
		expect( juego.pos_0 ).to eq ""

	end

	it ("Juego termina ganando A") do
		juego=Michi.new
		juego.iniciar_efectos(0,0,0,0,0,0,0,0,0)
		juego.marcar_casilla("A",0)
		juego.marcar_casilla("A",1)
		juego.marcar_casilla("A",2)
		expect( juego.verificar_ganador ).to eq "El ganador es el Jugador A"
		expect( juego.validar_fin ).to eq 1

	end
end
