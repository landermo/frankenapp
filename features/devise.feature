Feature: Devise Sign-in

  Scenario: signing up for new account
    Given I do not have an account
    And I'm on the sign up page
    When I register as james@example.com
    Then I should be on the home page
    And I have a user account

  Scenario: logging in as existing user
      Given user@example.com has an account
      And I'm on the sign in page
      When I enter my email and password
      And I click Log in
      Then I should be on the home page

  Scenario: able to log out
    Given user is logged in
    When I click on Log out
    Then I should see the log in link
