Given('I am on the login page') do
  @login_screen = LoginScreen.new
  puts "Login Page"
  sleep 5
end

When('I fill in email with {string}') do |email_login|
  @login_screen = LoginScreen.new
  @login_screen.email_login.send_keys email_login
end

And('I fill in password with {string}') do |password|
  @login_screen.password_login.send_keys password
end

And('I press Login button') do
  @login_screen.button_login.click
end

Then('I should see {string}') do |string|
  # text_element = @login_screen.find_text(string)
  expect(find_text(string)).to be_truthy
end

Then('I see welcome label appear with title {string}') do |expected|
  sleep 2
  @welcome_screen = WelcomeScreen.new
  expect(@welcome_screen.welcome_label.value).to eq expected.to_s
end