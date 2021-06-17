require 'selenium-webdriver'
require 'test/unit'
class AdvanceTest < Test::Unit::TestCase
  def setup
    $driver = Selenium::WebDriver.for :chrome

    $driver.navigate.to 'https://google.com'
end

  def test_Login
    serch_box = $driver.find_element(name: 'q')
      serch_box.send_keys 'Hello Girish'
    sleep 3

  end

  def teardown
    search_btn = $driver.find_element(name: 'btnK')
      search_btn.click
      sleep 3
      # @driver.quit

  end

end