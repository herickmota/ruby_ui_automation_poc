#language: en

Feature: Login
  As a user I can log in on vat Platform
  So I can report all my taxes.

  @login
  Scenario: Login with valid user
    When the user logs with the "smoke.testing@sovos.com" and "Sovos123!"
    Then the user is authenticated


  @doing
  Scenario Outline: Login with invalid user
    When the user logs with the "<email>" and "<password>"
    Then the user should see the message "<message>"

     Examples:
      | email             | password | message                             |
      |                   | 1231321  | The \"E-mail\" field is required.   |
      | blevers@sovos.com |          | The \"Password\" field is required. |
