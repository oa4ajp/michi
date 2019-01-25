Given(/^Visito el index$/) do
  visit '/'
end

Then(/^Debo ver "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end
