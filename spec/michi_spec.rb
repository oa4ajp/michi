require "./lib/michi.rb"

describe "Michi" do
	it ("Inicio de juego tablero sin marcar") do
		juego=Michi.new
		expect( juego.pos_0 ).to eq ""
		expect( juego.pos_1 ).to eq ""
		expect( juego.pos_2 ).to eq ""
	end

	it ("Inicio de juego puntaje jugador A") do
		juego=Michi.new
		expect( juego.puntaje_a ).to eq 0
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

	it ("Jugador A gana") do
		juego=Michi.new
		juego.marcar_casilla("A",0)
		juego.marcar_casilla("A",1)
		juego.marcar_casilla("A",2)
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
		expect( juego.puntaje_b ).to eq 0
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
	
	it ("Jugador B gana") do
		juego=Michi.new
		juego.marcar_casilla("B",0)
		juego.marcar_casilla("B",1)
		juego.marcar_casilla("B",2)
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
	end
end
