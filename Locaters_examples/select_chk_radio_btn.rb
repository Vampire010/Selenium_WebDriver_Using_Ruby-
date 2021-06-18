require 'selenium-webdriver'

class Select_Chk_radio_btn
  $driver = Selenium::WebDriver.for :chrome

  def open_brow
    $driver.navigate.to 'http://mykidsbank.org/'
    element = $driver.find_element(name:'cb0')

    # check if it is selected
    puts "Is Element Selected Before Click : #{element.selected?} "
    sleep 3
    element.click
    sleep 3
    # check if it is selected
    puts "Is Element Selected After Click : #{element.selected?} "

    sign_up = $driver.find_element(name:'cb0')

    puts "Element Displayed ?   #{sign_up.displayed?}"

  end
end
ck = Select_Chk_radio_btn.new
ck.open_brow