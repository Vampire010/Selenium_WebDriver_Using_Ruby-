require 'selenium-webdriver'
class Implicit_wait_ex
  $driver = Selenium::WebDriver.for :chrome
  $driver.manage.timeouts.implicit_wait = 10

  def impl_ex
    $driver.navigate.to 'https://www.google.co.in/'
    search_form = $driver.find_element(:name,'q')
    search_form.send_keys('Selenium')
    clic_onser = $driver.find_element(:name,'btnK')
    clic_onser.click
  end
end
ck = Implicit_wait_ex.new
ck.impl_ex
