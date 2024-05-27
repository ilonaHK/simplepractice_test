# frozen_string_literal: true

require 'factory_bot'
FactoryBot.reload

Given(/^I am logged in with valid credentials$/) do
  @login_page = LoginPage.new
  @login_page.load
  @login_page.login(USER_LOGIN, USER_PASSWORD)
end

And(/^I am on the create client form$/) do
  @calendar_page = CalendarPage.new
  @calendar_page.load
  @calendar_page.top_nav_bar.open_create_client_form
  @create_client_page = CreateClientPage.new
end

When(/^I register a new adult client and set notification preferences$/) do
  client = FactoryBot.build(:adult_client)
  @create_client_page.fill_form(client)
  @create_client_page.submit_form
end
Then(/^I should see the new adult client at the client page$/) do
  @client_details_page = SendingIntakesForm.new
  @client_details_page.close_form
end


When(/^I register a new minor client and set notification preferences$/) do
  pending
end

And(/^I provide guardian information$/) do
  pending
end

Then(/^I should see the new minor client in the client list$/) do
  pending
end

When(/^I register a new couple client and set notification preferences$/) do
  pending
end

Then(/^I should see the new couple client in the client list$/) do
  pending
end
