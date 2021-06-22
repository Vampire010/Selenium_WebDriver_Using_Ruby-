require 'selenium-webdriver'
class Amzon_Search_Drp

  $driver = Selenium::WebDriver.for :chrome
  def open_brow
    $driver.navigate.to 'https://www.amazon.in/'
  end
  def handle_drp_down
    sleep 2

    element = $driver.find_element(id:'searchDropdownBox')

    select = Selenium::WebDriver::Support::Select.new(element)
    #select.select_by(:text, "Amazon Fashion")
    #select.first_selected_option
    select.select_by(:value, "search-alias=fashion")

    sleep 4

    # get all the options for this element
    all_options = $driver.find_elements(:tag_name, "option")
    # select the options
    all_options.each do |option|
      puts "Value is: " + option.attribute("value")
    end
  end
end
amz = Amzon_Search_Drp.new
amz.open_brow
amz.handle_drp_down