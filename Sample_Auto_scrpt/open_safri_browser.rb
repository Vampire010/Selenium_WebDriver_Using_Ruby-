class Open_Safri_Browser

  #path = "/Users/girishg/RubymineProjects/Ruby_Automation/Browser_Driver/chromedriver"

  driver = Selenium::WebDriver::Safari::Service.driver_path=()

  @driver = Selenium::WebDriver.for :safari

  @driver.get ("http://google.com")

  element = @driver.find_element(name: 'q')
  element.send_keys "Hello WebDriver!"
  element.submit
end