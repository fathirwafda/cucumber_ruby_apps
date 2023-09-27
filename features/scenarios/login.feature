@android @all-login
Feature: Login Android Apps

  @login-success
  Scenario: Login with valid credentials
    Given I am on the login page
    When I fill in email with 'vlad@drakul.com'
    And  I fill in password with 'secret123'
    And I press Login button
    Then I should see the message 'Android NewLine Learning'

  @login-invalid-email
  Scenario: Login invalid email
    Given I am on the login page
    Given I fill in email with 'wrong@email.com'
    And  I fill in password with 'secret123'
    And I press Login button
    Then I should see 'Wrong Email or Password'

  @login-invalid-password
  Scenario: Login invalid password
    Given I am on the login page
    Given I fill in email with 'fubar@foo.com'
    And  I fill in password with 'wrong password'
    And I press Login button
    Then I should see 'Wrong Email or Password'

  @login-empty-field
  Scenario: Login with empty field (Skipped email and login)
    Given I am on the login page
    And I press Login button
    Then I should see 'Enter Valid Email'

  @registered-login
  Scenario: Login with valid credentials
    Given I click create account link
    When I create the name with 'Vlad Drakul'
    And I fill the registration email with 'vlad@drakul.com'
    And  I make the password with 'secret123'
    And  I confirm password with 'secret123'
    And I press register button
    Then I should see the message 'Registration Successful'
    When I press Login link
    Given I am on the login page
    When I fill in email with 'vlad@drakul.com'
    And  I fill in password with 'secret123'
    And I press Login button
    Then I should see the message 'Android NewLine Learning'
  