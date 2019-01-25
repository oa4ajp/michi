require 'sinatra'
require "./lib/michi.rb"

get '/' do
    @@juego = Michi.new
    @@posicion0 =  @@juego.pos_0
    @@posicion1 =  @@juego.pos_1
    @@posicion2 =  @@juego.pos_2
    @@posicion3 =  @@juego.pos_3
    @@posicion4 =  @@juego.pos_4
    @@posicion5 =  @@juego.pos_5    
    @@posicion6 =  @@juego.pos_6
    @@posicion7 =  @@juego.pos_7
    @@posicion8 =  @@juego.pos_8       
    @@ronda = @@juego.mostrar_ronda
    @@puntaje = "Puntaje: " + @@juego.mostrar_puntaje
    @@jugador = @@juego.mostrar_jugador
    @@simbolo = "Jugador A es "+ @@juego.mostrar_simbolo_a

    erb :michi
end

post '/posicion0' do
    marcar(@@juego.mostrar_turno, 0)
    erb :michi
end

post '/posicion1' do
    marcar(@@juego.mostrar_turno, 1)
    erb :michi
end

post '/posicion2' do
    marcar(@@juego.mostrar_turno, 2)
    erb :michi
end

post '/posicion3' do
    marcar(@@juego.mostrar_turno, 3)
    erb :michi
end
post '/posicion4' do
    marcar(@@juego.mostrar_turno, 4)
    erb :michi
end

post '/posicion5' do
    marcar(@@juego.mostrar_turno, 5)
    erb :michi
end

post '/posicion6' do
    marcar(@@juego.mostrar_turno, 6)
    erb :michi
end
post '/posicion7' do
    marcar(@@juego.mostrar_turno, 7)
    erb :michi
end

post '/posicion8' do
    marcar(@@juego.mostrar_turno, 8)
    erb :michi
end

post '/reiniciar' do
  @@juego.reiniciar
  @mensaje = @@juego.mostrar_mensaje

  @@posicion0 = @@juego.pos_0
  @@posicion1 = @@juego.pos_1
  @@posicion2 = @@juego.pos_2
  @@posicion3 = @@juego.pos_3
  @@posicion4 = @@juego.pos_4
  @@posicion5 = @@juego.pos_5
  @@posicion6 = @@juego.pos_6
  @@posicion7 = @@juego.pos_7
  @@posicion8 = @@juego.pos_8  

  @@turno = "A"

    @@ronda = @@juego.mostrar_ronda
    @@puntaje = "Puntaje: " + @@juego.mostrar_puntaje
    @@jugador = @@juego.mostrar_jugador

    if(@@juego.mostrar_turno =="A")
    	@@simbolo = "Jugador A es "+ @@juego.mostrar_simbolo_a
    else
    	@@simbolo = "Jugador B es "+ @@juego.mostrar_simbolo_b
    end

  erb :michi
end

def marcar(jugador, posicion)
    if @@juego.validar_casilla(posicion)
        @@juego.marcar_casilla(jugador, posicion)
        @mensaje = @@juego.verificar_ganador
        @@juego.rotar_turno
    else
        @mensaje = @@juego.mostrar_mensaje
    end

    @@posicion0 = @@juego.pos_0
    @@posicion1 = @@juego.pos_1
    @@posicion2 = @@juego.pos_2
    @@posicion3 = @@juego.pos_3
    @@posicion4 = @@juego.pos_4
    @@posicion5 = @@juego.pos_5  
    @@posicion6 = @@juego.pos_6
    @@posicion7 = @@juego.pos_7
    @@posicion8 = @@juego.pos_8

    @@ronda = @@juego.mostrar_ronda
    @@puntaje = "Puntaje: " + @@juego.mostrar_puntaje
    @@jugador = @@juego.mostrar_jugador

    if(@@juego.mostrar_turno =="A")
    	@@simbolo = "Jugador A es "+ @@juego.mostrar_simbolo_a
    else
    	@@simbolo = "Jugador B es "+ @@juego.mostrar_simbolo_b
    end


end
