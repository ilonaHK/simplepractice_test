Feature: Client Management
  As a clinician, I want to create various types of clients and configure their notifications so I can manage their data and appointments efficiently.

  Background:
    Given I am logged in with valid credentials
    And I am on the create client form

  Scenario: Register a new adult client
    When I register a new adult client and set notification preferences
    Then I should see the new adult client at the client page

  Scenario: Register a new minor client
    When I register a new minor client and set notification preferences
    And I provide guardian information
    Then I should see the new minor client in the client list

  Scenario: Register a new couple client
    When I register a new couple client and set notification preferences
    Then I should see the new couple client in the client list

