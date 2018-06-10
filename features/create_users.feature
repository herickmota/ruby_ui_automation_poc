# language: en

Feature: Create Users

    As an admin user of VAT Sovos
    I want to be able to create new users
    So they can report and manage the taxes

    @doing @auth
    Scenario: Create Admin User
      Given that I navigate to menu:
          | menu | Admin     |
          | item | All Users |
      And I click to create users
      And I select the Account "User_Guide"
     When I Fill all the required information
      | first_name | last_name | role          | email                 | password  | region | timezone  |
      | smoke      | test1     | administrator | smoke_test1@sovos.com | Sovos123! | EU     | Amsterdam |
     Then I can see the message
     """
     User created
     """
