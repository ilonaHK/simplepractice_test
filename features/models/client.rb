# models/client.rb
class Client
  attr_accessor :first_name, :last_name, :email, :phone, :email_permission, :phone_permission, :location, :client_type

  def initialize(attrs = {})
    @first_name = attrs[:first_name]
    @last_name = attrs[:last_name]
    @client_type = attrs[:client_type]
    @location = attrs[:location]
    @email = attrs[:email]
    @phone = attrs[:phone]
    @email_permission = attrs[:email_permission]
    @phone_permission = attrs[:phone_permission]
  end
end
