require "selenium-webdriver"
class Get_window_size

  $path = "/Users/girishg/RubymineProjects/Ruby_Automation/Browser_Driver/chromedriver"
  $driver = Selenium::WebDriver::Chrome::Service.driver_path =( $path )

  def open_browser

    @driver = Selenium::WebDriver.for :chrome
    $driver.get ("https://www.goole.com/")
    sleep 4
  end

  def perform_action
    # Access each dimension individually
    $driver.manage.window.resize_to(1024,768)
    sleep 4
    width =  $driver.manage.window.size.width
    height =  $driver.manage.window.size.height
    puts width
    puts height
  end


end
gt = Get_window_size.new
gt.open_browser
gt.perform_action
gt.get_cordinates

