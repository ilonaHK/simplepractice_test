# frozen_string_literal: true

# top_nav_bar.rb
require 'site_prism'
require 'capybara'

# This class represents the top navigation bar on the page and contains methods to interact with its elements.
class TopNavBar < SitePrism::Section
  element :search_clients_field, 'input[placeholder="Search clients"]'
  element :create_client_button, 'button.button-link.button-navbar.create'
  element :search_clients_button, 'svg.icon-search'

  element :schedule_appointment_option, 'button', text: 'Schedule appointment'
  element :add_availability_option, 'button', text: 'Add availability'
  element :create_client_option, 'button', text: 'Create client'

  def open_create_client_form
    create_client_button.click
    create_client_option.click
  end
end


