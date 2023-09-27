require 'appium_lib'
require "appom"
require "dotenv"

appium_lib_options = {
  server_url: 'http://0.0.0.0:4723/wd/hub'
}

caps = {
  platformName: "Android",
  deviceName: "Google Pixel 2",
  app: "./features/support/Sample Android App - Login Tes_4.0_Apkpure.apk", # Adjust the path as needed
  platformVersion: "12.0"
}

Appom.register_driver do
  options = {
    appium_lib: appium_lib_options,
    caps: caps
  }
  Appium::Driver.new(options, true) # true to promote appium methods.
end

Before do |scenario|
  Appom.driver.start_driver
end

After do |scenario|
  Appom.driver.driver_quit
end
