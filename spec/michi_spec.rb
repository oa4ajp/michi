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
		expect( juego.mostrar_error ).to eq "La casilla ya ha sido marcada"
	end

	it ("Jugador A marca pos 0 que no esta marcada") do
		juego = Michi.new
		
		expect( juego.validar_casilla(0) ).to eq true
	end
	
end
