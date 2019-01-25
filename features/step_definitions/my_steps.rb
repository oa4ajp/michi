Given(/^Visito el index$/) do
  visit '/'
end

Then(/^Debo ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

When(/^El jugador A hace click en el boton "(.*?)"$/) do |idBoton|
  click_button(idBoton)
end
