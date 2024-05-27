# frozen_string_literal: true

require 'capybara/cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'
require 'factory_bot'
require 'rspec'
require 'yaml'
require_relative 'pages/login_page'
require_relative 'pages/calendar_page'
require_relative 'pages/navigation'
require_relative 'pages/create_client_page'
require_relative '../support/sections/top_nav_bar'
require_relative '../spec/factories/clients_factory'
require_relative '../models/client'

config_file_path = File.join(File.dirname(__FILE__), '../secrets.yaml')
config = YAML.load_file(config_file_path)[ENV['APP_ENV'] || 'development']

FactoryBot.factories.clear
FactoryBot.definition_file_paths = [File.expand_path('../spec/factories', __dir__)]
FactoryBot.find_definitions

USER_LOGIN = config['login']
USER_PASSWORD = config['password']

World(RSpec::Matchers)

Capybara.register_driver :selenium_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--disable-infobars')
  options.add_argument('--disable-extensions')
  options.add_argument('--start-maximized')
  options.add_argument('--disable-gpu')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--no-sandbox')
  options.add_argument('--headless') if ENV['HEADLESS']
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end
Capybara.default_max_wait_time = 10
Capybara.default_driver = :selenium_chrome
Capybara.javascript_driver = :selenium_chrome

Capybara.app_host = 'https://secure.simplepractice.com'
World(FactoryBot::Syntax::Methods)
