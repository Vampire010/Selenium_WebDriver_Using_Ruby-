require "selenium-webdriver"

class Open_Safri_Browser

  #path = "/Users/girishg/RubymineProjects/Ruby_Automation/Browser_Driver/chromedriver"

  #driver = Selenium::WebDriver::Safari::Service.driver_path=()

  @driver = Selenium::WebDriver.for :safari

  #@driver.get ("http://google.com")
  @driver.navigate.to("http://google.com")
  sleep 3

  element = @driver.find_element(name: 'q')
  element.send_keys "Hello WebDriver!"
  element.submit
  crnt_url = @driver.current_url

  puts " Url is :  #{crnt_url}"
  sleep 3
  @driver.navigate.back
  sleep 3
  @driver.navigate.forward
  sleep 3
  @driver.navigate.refresh
  sleep 3

  crnt_title = @driver.title
  puts " Page_Title is :  #{crnt_title}"

  #Close the tab or window
  #driver.close
  def teardown
    #@driver.quit
  end
end