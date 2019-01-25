Given(/^Visito el index$/) do
  visit '/'
end

Then(/^Debo ver "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

When(/^El jugador A hace click en el boton "(.*?)"$/) do |idBoton|
  click_button(idBoton)
end

Then(/^Debo ver la "(.*?)"$/) do |textoBoton|
  last_response.body.should =~ /#{textoBoton}/m
end
