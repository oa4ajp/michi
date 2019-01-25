require 'sinatra'
require "./lib/michi.rb"

get '/' do
    @@juego = Michi.new
    @@turno = "A"
    @@posicion0 =  @@juego.pos_0
    @@posicion1 =  @@juego.pos_1
    @@posicion2 =  @@juego.pos_2
    @@posicion3 =  @@juego.pos_3
    @@posicion4 =  @@juego.pos_4
    @@posicion5 =  @@juego.pos_5    
    @@posicion6 =  @@juego.pos_6
    @@posicion7 =  @@juego.pos_7
    @@posicion8 =  @@juego.pos_8       

    erb :michi
end

post '/posicion0' do
    marcar(@@turno, 0)

    erb :michi
end

post '/posicion1' do
    marcar(@@turno, 1)

    erb :michi
end

post '/posicion2' do
    marcar(@@turno, 2)


    erb :michi
end

post '/posicion3' do
    marcar(@@turno, 3)
    erb :michi
end
post '/posicion4' do
    marcar(@@turno, 4)
    erb :michi
end

post '/posicion5' do
    marcar(@@turno, 5)
    erb :michi
end

post '/posicion6' do
    marcar(@@turno, 6)
    erb :michi
end
post '/posicion7' do
    marcar(@@turno, 7)
    erb :michi
end

post '/posicion8' do
    marcar(@@turno, 8)
    erb :michi
end

post '/reiniciar' do
  @@juego.reiniciar
  @mensaje = @@juego.mostrar_mensaje

  @@posicion0 =  @@juego.pos_0
  @@posicion1 =  @@juego.pos_1
  @@posicion2 =  @@juego.pos_2
  @@posicion3 =  @@juego.pos_3
  @@posicion4 =  @@juego.pos_4
  @@posicion5 =  @@juego.pos_5
  @@posicion6 =  @@juego.pos_6
  @@posicion7 =  @@juego.pos_7
  @@posicion8 =  @@juego.pos_8  

  @@turno = "A"

  erb :michi
end

def marcar(jugador, posicion)
    if @@juego.validar_casilla(posicion)
        @@juego.marcar_casilla(jugador, posicion)
        @mensaje = @@juego.verificar_ganador
        if @@turno == "A"
            @@turno = "B"
        else
            @@turno = "A"
        end
    else
        @mensaje = @@juego.mostrar_mensaje
    end

    @@posicion0 =  @@juego.pos_0
    @@posicion1 =  @@juego.pos_1
    @@posicion2 =  @@juego.pos_2
    @@posicion3 =  @@juego.pos_3
    @@posicion4 =  @@juego.pos_4
    @@posicion5 =  @@juego.pos_5  
    @@posicion6 =  @@juego.pos_6
    @@posicion7 =  @@juego.pos_7
    @@posicion8 =  @@juego.pos_8     

end
