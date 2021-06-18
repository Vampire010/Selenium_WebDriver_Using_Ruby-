require 'selenium-webdriver'

class Tag_Names_ex
  $driver = Selenium::WebDriver.for :chrome
  def open_brow
    begin
      $driver.navigate.to 'https://parabank.parasoft.com/'
      # Get element with tag name 'div'
      element = $driver.find_element(:tag_name,'div')
      # Get all the elements available with tag name 'p'
      elements = element.find_elements(:tag_name,'a')
      elements.each { |e|
        puts e.attribute('href')
      }
    ensure
      $driver.quit
    end
  end
end
tg = Tag_Names_ex.new
tg.open_brow
