# frozen_string_literal: true

require 'site_prism'
require 'capybara'

class SendingIntakesForm < SitePrism::Page
  set_url '/clients{/id}'

  element :client_name, 'div.title'
  element :continue_to_email_button, 'button', text: 'Continue to Email'
  element :continue_to_review_button, 'button', text: 'Continue to Review'
  element :share_send_now_button, 'button', text: 'Share & Send Now'
  element :client_info, 'div.client-info'
  element :close_button, 'button.close-button'
  element :cancel_and_exit_button, 'button', text: 'Cancel & Exit'

  def verify_client_info(first_name, last_name)
    expect(client_name).to have_content("#{first_name} #{last_name}")
  end

  def click_continue_to_email
    continue_to_email_button.click
  end

  def click_continue_to_review
    continue_to_review_button.click
  end

  def click_share_send_now
    share_send_now_button.click
  end
  def close_form
    close_button.click
    cancel_and_exit_button.click
  end
end
