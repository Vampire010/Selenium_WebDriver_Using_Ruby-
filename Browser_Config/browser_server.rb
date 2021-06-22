# frozen_string_literal: true
require 'selenium-webdriver'
class Browser_Server

  def Open_browser( browser_Name , url)

    case browser_Name
    when 'chrome'
      $driver = Selenium::WebDriver.for :chrome

      $driver.navigate.to url
      sleep 5

    when 'safari'
      $driver = Selenium::WebDriver.for :safari

      $driver.navigate.to url

    end
  end
  end
