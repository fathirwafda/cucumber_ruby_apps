def scroll_from_to(start_x, start_y, end_x, end_y)
  action = Appium::TouchAction.new
  action.press(x: start_x, y: start_y).wait(1000).move_to(x: end_x, y: end_y).release.perform
end

def scroll_up
  size = Appom.driver.window_size
  start_x = size.width / 2
  start_y = (size.height * 0.5).to_i
  end_y = (size.height * 0.2).to_i
  
  scroll_from_to(start_x, start_y, start_x, end_y)
end

def message_appear(message)
  wait = Selenium::WebDriver::Wait.new(timeout: 10) # Adjust timeout as needed
  element = wait.until { Appom.driver.find_element(:xpath, "//*[contains(@text,'#{message}')]") }
  element.text.include?(message)
end

def find_text(text)
  Appom.driver.find_element(:xpath, "//*[contains(@text, '#{text}')]")
end
