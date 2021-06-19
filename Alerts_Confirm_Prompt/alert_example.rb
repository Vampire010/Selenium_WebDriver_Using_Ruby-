require 'selenium-webdriver'

class Alert_Example
  $driver = Selenium::WebDriver.for :chrome

  def open_brow
    $driver.navigate.to 'https://www.selenium.dev/documentation/en/webdriver/js_alerts_prompts_and_confirmations/'
  end

  def Handle_Alert_PopUP
    element = $driver.find_element(xpath:'//*[@id="body-inner"]/p[2]/a')
    element.click
    sleep 3

    # Store the alert reference in a variable
    alert = $driver.switch_to.alert

    # Store the alert text in a variable
    alert_text = alert.text
    puts alert_text

    # Press on OK button
    alert.accept
    sleep 3

  end
end
alt = Alert_Example.new
alt.open_brow
alt.Handle_Alert_PopUP