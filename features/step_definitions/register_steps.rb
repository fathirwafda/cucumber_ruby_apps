When('I click create account link') do
  @login_screen = LoginScreen.new(@driver)
  @login_screen.button_register.click
end

When('I create the name with {string}') do |name|
  @register_screen = RegisterScreen.new
  @register_screen.regis_name.send_keys name
end

When('I left the name empty {string}') do |name|
  @register_screen = RegisterScreen.new
  @register_screen.regis_name.send_keys name
  puts "The Name is empty"
end

And('I fill the registration email with {string}') do |email|
  @register_screen.regis_email.send_keys email
end

And('I make the password with {string}') do |password|
  @register_screen.regis_password.send_keys password
end

And('I left the password empty') do
  @register_screen.press_enter_keyboard
  puts "Password is empty"
end

And('I confirm password with {string}') do |password_confirm|
  @register_screen.regis_confirm_password.send_keys password_confirm
end

And('I press register button') do
  @register_screen.regis_button.click
end

Then("I should see the message {string}") do |message|
  expect(message_appear(message)).to be_truthy
end

When('I press Login link') do
  scroll_up
  sleep 3
  @register_screen.regis_login_button.click
end
