# create_client_page.rb
require 'site_prism'
require 'capybara'
require_relative '../sections/top_nav_bar'
require_relative '../../models/client'


class CreateClientPage < SitePrism::Page
  set_url '/calendar/appointments'

  element :close_button, 'button[aria-label="close dialog"]'
  element :continue_button, 'button', text: 'Continue'

  element :client_type_adult, 'input[name="clientType"][value="adult"]'
  element :client_type_minor, 'input[name="clientType"][value="minor"]'
  element :client_type_couple, 'input[name="clientType"][value="couple"]'
  element :add_to_waitlist, 'input[data-type-create-client-add-waitlist]'

  element :legal_first_name, 'input[name="firstName"]'
  element :legal_last_name, 'input[name="lastName"]'

  element :add_email_button, 'button.add-row-button', text: 'Add email'
  element :add_phone_button, 'button.add-row-button', text: 'Add phone'
  element :email_input, 'input[name="email"]'

  element :upcoming_appointments_email, 'input[id="reminders-upcoming-appointments-email"]'
  element :upcoming_appointments_phone_text, 'input[id="reminders-upcoming-appointments-text"]'
  element :upcoming_appointments_phone_voice, 'input[id="reminders-upcoming-appointments-voice"]'

  element :incomplete_documents_email, 'input[id="reminders-incomplete-documents-email"]'
  element :incomplete_documents_phone_text, 'input[id="reminders-incomplete-documents-text"]'
  element :incomplete_documents_phone_voice, 'input[id="reminders-incomplete-documents-voice"]'

  element :cancellations_email, 'input[id="reminders-cancellations-email"]'
  element :cancellations_phone_text, 'input[id="reminders-cancellations-text"]'
  element :cancellations_phone_voice, 'input[id="reminders-cancellations-voice"]'

  element :location_select, 'select[name="office"]'

  def set_email_permission(permission)
    find('button', text: permission).click
  end

  def set_phone_permission(permission)
    find('button', text: permission).click
  end

  def select_location(location)
    location_select.select(location)
  end

  def fill_form(client)
    legal_first_name.set(client.first_name)
    legal_last_name.set(client.last_name)
    add_email_button.click
    email_input.set(client.email)
    set_email_permission(client.email_permission)
    add_phone_button.click
    find('input[name="phone"]').set(client.phone)
    set_phone_permission(client.phone_permission)
    select_location(client.location)
  end

  def submit_form
    continue_button.click
  end
end
