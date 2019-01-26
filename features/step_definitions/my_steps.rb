Given(/^Visito el index$/) do
  visit '/'
end

Then(/^Debo ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

When(/^El jugador A hace click en el boton "(.*?)"$/) do |idBoton|
  click_button(idBoton)
end

When(/^El jugador B hace click en el boton "(.*?)"$/) do |idBoton|
  click_button(idBoton)
end

When(/^Casilla (\d+) devuelve (\d+)$/) do |boton, efecto|
  if(boton == "2")
    @@juego.iniciar_efectos(0,efecto.to_i,0,0,0,0,0,0,0)
  elsif(boton == "9")
    @@juego.iniciar_efectos(0,0,0,0,0,0,0,0,efecto.to_i)
  end
end

When(/^Iniciar con efectos deshabilitados$/) do
  @@juego.iniciar_efectos(0,0,0,0,0,0,0,0,0)
end

