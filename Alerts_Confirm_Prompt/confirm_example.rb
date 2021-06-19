require 'selenium-webdriver'

class Confirm_Example

  $driver = Selenium::WebDriver.for :chrome

  def open_brow
    $driver.navigate.to 'https://www.selenium.dev/documentation/en/webdriver/js_alerts_prompts_and_confirmations/'
  end

  def Handle_Alert_PopUP
    element = $driver.find_element(xpath:'//*[@id="body-inner"]/p[4]/a')
    element.click
    sleep 3

    # Store the alert reference in a variable
    alert = $driver.switch_to.alert

    # Store the alert text in a variable
    alert_text = alert.text
    puts alert_text

    # Press on OK button
    #alert.accept

    # Press on Cancel button
    alert.dismiss

    sleep 3
  end
end
cnfrm = Confirm_Example.new
cnfrm.open_brow
cnfrm.Handle_Alert_PopUP