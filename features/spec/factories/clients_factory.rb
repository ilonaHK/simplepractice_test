# frozen_string_literal: true
# spec/factories/clients_factory.rb
FactoryBot.define do
  factory :client do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    email_permission { 'Email OK' }
    phone_permission { 'Text / voicemail OK' }
    location { '61 Baxter St, Boston, MA, 021272537' }

    factory :adult_client do
      client_type { 'adult' }
    end

    factory :minor_client do
      client_type { 'minor' }
    end

    factory :couple_client do
      client_type { 'couple' }
    end
  end
end
