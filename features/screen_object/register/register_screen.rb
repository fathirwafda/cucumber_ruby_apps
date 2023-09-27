class RegisterScreen < Appom::Page
  element :regis_name, :id, 'com.loginmodule.learning:id/textInputEditTextName'
  element :regis_email, :id, 'com.loginmodule.learning:id/textInputEditTextEmail'
  element :regis_password, :id, 'com.loginmodule.learning:id/textInputEditTextPassword'
  element :regis_confirm_password, :id, 'com.loginmodule.learning:id/textInputEditTextConfirmPassword'
  element :regis_button, :id, 'com.loginmodule.learning:id/appCompatButtonRegister'
  element :regis_login_button, :id, 'com.loginmodule.learning:id/appCompatTextViewLoginLink'

  def press_enter_keyboard
    Appom.driver.press_keycode(66)
  end
end