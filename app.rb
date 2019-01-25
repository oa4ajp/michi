require 'sinatra'
require "./lib/michi.rb"

get '/' do
    @@juego = Michi.new
    @posicion0 =  @@juego.pos_0
    @posicion1 =  @@juego.pos_1
    @posicion2 =  @@juego.pos_2

    erb :michi
end

post '/posicion0' do

    marcar("A", 0)
    @posicion0 =  @@juego.pos_0
    @posicion1 =  @@juego.pos_1
    @posicion2 =  @@juego.pos_2
    erb :michi
end

post '/posicion1' do
    marcar("A", 1)

    @posicion0 =  @@juego.pos_0
    @posicion1 =  @@juego.pos_1
    @posicion2 =  @@juego.pos_2

    erb :michi
end

post '/posicion2' do
    marcar("A", 2)

    @posicion0 =  @@juego.pos_0
    @posicion1 =  @@juego.pos_1
    @posicion2 =  @@juego.pos_2

    erb :michi
end

post '/reiniciar' do
  @@juego.reiniciar
  @mensaje = @@juego.mostrar_mensaje

  erb :michi
end

def marcar(jugador, posicion)
    if @@juego.validar_casilla(posicion)
        @@juego.marcar_casilla(jugador, posicion)
        @mensaje = @@juego.verificar_ganador
    else
        @mensaje = @@juego.mostrar_mensaje
    end
end
