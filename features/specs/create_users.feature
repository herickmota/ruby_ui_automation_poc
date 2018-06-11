# language: en

Feature: Create Users

    As an admin user of VAT Sovos
    I want to be able to create new users
    So they can report and manage the taxes

    @valid_user_creation @auth
    Scenario: Create Admin User
      Given that the user navigate to menu:
          | menu | Admin     |
          | item | All Users |
      And the user click to create users
      And the user select the account "User_Guide"
     When the user Fill all the required information
          | first_name | last_name | role | email                 | password  | region | timezone  |
          | smoke      | test3     | User | smoke_test3@sovos.com | Sovos123! | EU     | (UTC) Coordinated Universal Time |
     Then the user can see the message of success "User created successfully."

     @invalid_user_creation @auth
     Scenario Outline: Invalid Creation of Users
        Given that the user is on Create users Page
        And the user select the account "<account>"
        When the user Fill all the required information
          | first_name   | last_name   | role   | email   | password   | region   | timezone   |
          | <first_name> | <last_name> | <role> | <email> | <password> | <region> | <timezone> |
        Then the user can see the message of error "<message>"

        Examples:
        | account    | first_name | last_name | role | email                 | password  | region | timezone                         | message                              |
        | User_Guide |            | test1     | User | smoke_test1@sovos.com | Sovos123! | EU     | (UTC) Coordinated Universal Time | The Firstname field is required.     |
        | User_Guide | smoke      |           | User | smoke_test1@sovos.com | Sovos123! | EU     | (UTC) Coordinated Universal Time | The Lastname field is required.      |
        | User_Guide | smoke      | test1     | User |                       | Sovos123! | EU     | (UTC) Coordinated Universal Time | The Email Address field is required. |
