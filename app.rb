require 'sinatra'
require "./lib/michi.rb"

get '/' do
    juego = Michi.new    
    @posicion0 =  juego.pos_0

    erb :michi
end

post '/posicion0' do
    juego = Michi.new    
    juego.marcar_casilla("A", 0)

    @posicion0 =  juego.pos_0

    erb :michi
end

post '/posicion1' do
    juego = Michi.new    
    juego.marcar_casilla("A", 1)

    @posicion1 =  juego.pos_1

    erb :michi
end

post '/posicion2' do
    juego = Michi.new    
    juego.marcar_casilla("A", 2)

    @posicion2 =  juego.pos_2

    erb :michi
end
