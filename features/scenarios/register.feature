@android @all-registration
Feature: Register Android Apps

  @register-success
  Scenario: User regist to the App succesfully

    Given I am on the login page
    When I click create account link
    When I create the name with 'Ronaldo Nazario'
    And I fill the registration email with 'ronaldo@brazil.com'
    And  I make the password with 'secret123'
    And  I confirm password with 'secret123'
    And I press register button
    Then I should see the message 'Registration Successful'

  @register-failed-noname
  Scenario: User regist to the App unsuccesfully due to the name is empty

    Given I click create account link
    When I left the name empty ''
    And I fill the registration email with 'ronaldo@brazil.com'
    And  I make the password with 'secret123'
    And  I confirm password with 'secret123'
    And I press register button
    Then I should see the message 'Enter Full Name'

  @register-failed-password-empty
  Scenario: User regist to the App failed due to the password is empty

    Given I click create account link
    When I create the name with 'Any Name'
    And I fill the registration email with 'anything@one.com'
    And  I left the password empty
    And  I confirm password with 'secret123'
    And I press register button
    Then I should see the message 'Enter Password'

  @register-failed-password-notmatched
  Scenario: User regist to the App failed due to the password did not matched

    Given I click create account link
    When I create the name with 'Any Name'
    And I fill the registration email with 'anything@one.com'
    And  I make the password with 'secret123'
    And  I confirm password with 'differentPassword'
    And I press register button
    Then I should see the message 'Password Does Not Matches'

  @register-failed-email-no-at
  Scenario: User regist to the App succesfully

    Given I click create account link
    When I create the name with 'Vlad Drakul'
    And I fill the registration email with 'vladdrakul.com'
    And  I make the password with 'secret123'
    And  I confirm password with 'secret123'
    And I press register button
    Then I should see the message 'Enter Valid Email'

  @register-login-success
  Scenario: User regist to the App succesfully and do login directly

    Given I click create account link
    When I create the name with 'Vlad Drakul'
    And I fill the registration email with 'vlad@drakul.com'
    And  I make the password with 'secret123'
    And  I confirm password with 'secret123'
    And I press register button
    Then I should see the message 'Registration Successful'
    When I press Login link
    Given I fill in email with 'vlad@drakul.com'
    And  I fill in password with 'secret123'
    And I press Login button
    Then I should see the message 'Android NewLine Learning'
