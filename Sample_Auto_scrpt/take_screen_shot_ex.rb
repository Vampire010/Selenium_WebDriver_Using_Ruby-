require 'selenium-webdriver'

class TakeScreenShot_ex

  $driver = Selenium::WebDriver.for :chrome
  def open_brow
    $driver.navigate.to 'https://google.com'
  end

  def enter
    serch_box = $driver.find_element(name: 'q')
    serch_box.send_keys 'Hello Girish'
    sleep 3

  end

  def clicker
    search_btn = $driver.find_element(name: 'btnK')
    search_btn.click

    # Takes and Stores the screenshot in specified path
    $driver.save_screenshot('/Users/girishg/RubymineProjects/Ruby_Automation/Screenshot/image.png')

    sleep 3
  end
end
op = TakeScreenShot_ex.new
op.open_brow
op.enter
op.clicker