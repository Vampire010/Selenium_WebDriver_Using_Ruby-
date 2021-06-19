require 'selenium-webdriver'
class Prompt_Example
  $driver = Selenium::WebDriver.for :chrome

  def open_brow
    $driver.navigate.to 'file:///Users/girishg/RubymineProjects/Ruby_Automation/Alerts_Confirm_Prompt/Prompt_html.html'
  end

  def Handle_Alert_PopUP
    element = $driver.find_element(xpath:'/html/body/button')
    element.click
    sleep 3

    # Store the alert reference in a variable
    alert = $driver.switch_to.alert
    sleep 3

    # Type a message
    alert.send_keys("selenium")
    sleep 3

    # Press on OK button
    alert.accept
    sleep 6
  end
end
prmpt = Prompt_Example.new
prmpt.open_brow
prmpt.Handle_Alert_PopUP

