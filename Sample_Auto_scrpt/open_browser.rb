# frozen_string_literal: true
require 'selenium-webdriver'
class Open_Browser

  $driver = Selenium::WebDriver.for :chrome
  def open_brow
    $driver.navigate.to 'https://google.com'
  end

  def enter
    serch_box = $driver.find_element(name: 'q')
    serch_box.send_keys 'Hello Girish'
    sleep 3
    $driver.manage.window.minimize
    sleep 3
    $driver.manage.window.maximize
    sleep 3

  end

  def clicker
    search_btn = $driver.find_element(name: 'btnK')
    search_btn.click
    $driver.manage.window.full_screen
    sleep 3
  end
end
op = Open_Browser.new
op.open_brow
op.enter
op.clicker