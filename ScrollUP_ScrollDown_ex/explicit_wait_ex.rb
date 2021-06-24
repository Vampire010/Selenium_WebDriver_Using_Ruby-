require 'selenium-webdriver'
class Explicit_wait_ex


  def explt_ex
    @driver = Selenium::WebDriver.for :chrome
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)

    @driver.navigate.to 'https://www.google.co.in/'
    search_form = @driver.find_element(:name,'q')

    search_form.send_keys('Selenium')
    clic_onser = @driver.find_element(:name,'btnK')
    wait.until { clic_onser.displayed? }

    clic_onser.click
  end
end
ck = Explicit_wait_ex.new
ck.explt_ex