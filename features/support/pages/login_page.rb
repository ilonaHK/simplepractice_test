# features/support/pages/login_page.rb
require 'site_prism'
require 'capybara'

class LoginPage < SitePrism::Page
  set_url 'https://account.simplepractice.com/'

  element :email_field, '#user_email'
  element :password_field, '#user_password'
  element :submit_button, '#submitBtn'

  def login(email, password)
    email_field.set(email)
    password_field.set(password)
    submit_button.click
  end
end
