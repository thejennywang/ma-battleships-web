Given(/^I am on the homepage$/) do
  visit('/')
end

Given(/^I am on the registration page$/) do
  visit('/registration')
end


When(/^I start a new game$/) do
  click_link('new-game-button')
end

Then(/^I am asked for my name$/) do
  page.has_css?('input[name=myname]')
end

Then(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in('name', :with => 'Jenny')
end

When(/^I press the "(.*?)" button$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I fill in (\d+) player names$/) do |arg1|
  fill_in('player1name', :with => 'Zoe')
  fill_in('player2name', :with => 'Joe')
end

Then(/^I should be brought to the waiting room$/) do
  pending # express the regexp above with the code you wish you had
end