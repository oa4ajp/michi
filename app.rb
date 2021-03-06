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

    @@estilo1 = ""
    @@estilo2 = ""
    @@estilo3 = ""
    @@estilo4 = ""
    @@estilo5 = ""
    @@estilo6 = ""
    @@estilo7 = ""
    @@estilo8 = ""
    @@estilo9 = ""

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
  @@estilo1 = ""
  @@estilo2 = ""
  @@estilo3 = ""
  @@estilo4 = ""
  @@estilo5 = ""
  @@estilo6 = ""
  @@estilo7 = ""
  @@estilo8 = ""
  @@estilo9 = ""

    if (@@juego.validar_fin==1)
	     @mensaje=@@juego.verificar_ganador + ", el juego termino"
    elsif(@@juego.mostrar_borrado == 1)

    	@@juego.marcar_casilla(jugador, posicion)
    	@@juego.rotar_borrado
    	@@juego.rotar_turno

    elsif (@@juego.validar_casilla(posicion))

		efecto=@@juego.obtener_efecto posicion

		#Implementar otros efectos
		if(efecto == 1)
		    @@juego.marcar_casilla(jugador, posicion)
		    @mensaje = "Activaste un comodin, tienes un turno adicional"
		elsif(efecto == 2)
		    @mensaje = "Activaste una trampa, pierdes tu turno"
		    @@juego.rotar_turno
		    @@juego.resetear_efecto posicion
		elsif(efecto == 3)
		    @@juego.marcar_casilla(jugador, posicion)
		    @mensaje = "Activaste un comodin, tienes que borrar el valor de una casilla"
		    @@juego.rotar_borrado
		    @@juego.resetear_efecto posicion
    elsif (efecto == 4)
        casilla_random = rand(0...9)
        @mensaje = "Activaste un efecto. Se selecciono una casilla al azar"
        @@juego.marcar_casilla(jugador, casilla_random)
        case casilla_random
        when 0
          @@estilo1 = "style=\"border-color: red;\""
        when 1
          @@estilo2 = "style=\"border-color: red;\""
        when 2
          @@estilo3 = "style=\"border-color: red;\""
        when 3
          @@estilo4 = "style=\"border-color: red;\""
        when 4
          @@estilo5 = "style=\"border-color: red;\""
        when 5
          @@estilo6 = "style=\"border-color: red;\""
        when 6
          @@estilo7 = "style=\"border-color: red;\""
        when 7
          @@estilo8 = "style=\"border-color: red;\""
        when 8
          @@estilo9 = "style=\"border-color: red;\""
        end

        @@juego.rotar_turno
        @@juego.resetear_efecto posicion
		else
		    @@juego.marcar_casilla(jugador, posicion)
		    @mensaje = @@juego.verificar_ganador
		    @@juego.rotar_turno
		end

		if(@@juego.verificar_ganador != "")
		    @mensaje=@@juego.verificar_ganador
		end
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
