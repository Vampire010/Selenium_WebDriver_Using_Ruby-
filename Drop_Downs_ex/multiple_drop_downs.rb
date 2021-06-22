require 'selenium-webdriver'

class Multiple_Drop_Downs
  $driver = Selenium::WebDriver.for :chrome

  def open_brow
    $driver.navigate.to 'file:///Users/girishg/RubymineProjects/Ruby_Automation/Html_ex/Drop_down_ex.html'
    sleep 2

    $driver.find_element(xpath:'//*[@id="dropdowndemo"]/input').click
    sleep 2
    element = $driver.find_element(id:'multiselectdd')

    select = Selenium::WebDriver::Support::Select.new(element)
    select.select_by(:text, "Solapur")
    sleep 3
    select.select_by(:value, "Pune_City")

    sleep 3
    select.deselect_by(:text, "Solapur")
    sleep 3
    select.deselect_by(:value, "Pune_City")
    sleep 3

    select.select_all
    sleep 5

    select.deselect_all
    sleep 5
  end
end

drp = Multiple_Drop_Downs.new
drp.open_brow