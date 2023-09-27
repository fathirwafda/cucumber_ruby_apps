class LoginScreen < Appom::Page
  element :email_login, :id, 'com.loginmodule.learning:id/textInputEditTextEmail'
  element :password_login, :id, 'com.loginmodule.learning:id/textInputEditTextPassword'
  element :button_login, :id, 'com.loginmodule.learning:id/appCompatButtonLogin'
  element :button_register, :id, 'com.loginmodule.learning:id/textViewLinkRegister'

  # def initialize(driver)
  #   @driver = driver
  # end

end
