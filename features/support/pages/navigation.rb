# navigation.rb
require 'site_prism'
require 'capybara'

class Navigation < SitePrism::Section
  element :calendar_link, 'a[href="/calendar/appointments"]'
  element :clients_link, 'a[href="/clients"]'
  element :analytics_link, 'a[href="/analytics"]'
  element :settings_link, 'a[href="/settings"]'
  element :recently_viewed_link, 'a[href="/recently_viewed"]'
  element :set_up_online_appointments_link, 'a[href="/set_up_online_appointments"]'
end

