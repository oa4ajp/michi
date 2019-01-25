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
    @@juego.marcar_casilla("A", 0)

    @posicion0 =  @@juego.pos_0
    @posicion1 =  @@juego.pos_1
    @posicion2 =  @@juego.pos_2

    @mensaje_ganador = @@juego.verificar_ganador
    
    erb :michi
end

post '/posicion1' do
    @@juego.marcar_casilla("A", 1)

    @posicion0 =  @@juego.pos_0
    @posicion1 =  @@juego.pos_1
    @posicion2 =  @@juego.pos_2

    @mensaje_ganador = @@juego.verificar_ganador

    erb :michi
end

post '/posicion2' do
    @@juego.marcar_casilla("A", 2)

    @posicion0 =  @@juego.pos_0
    @posicion1 =  @@juego.pos_1
    @posicion2 =  @@juego.pos_2

    @mensaje_ganador = @@juego.verificar_ganador

    erb :michi
end
