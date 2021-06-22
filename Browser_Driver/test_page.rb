require 'selenium-webdriver'
require 'roo'
require_relative '/Users/girishg/RubymineProjects/Ruby_Automation/Browser_Config/browser_server.rb'
require_relative '/Users/girishg/RubymineProjects/Ruby_Automation/Browser_Driver/test_page.rb'


class Test_Page

  browser_Type = 'chrome'
  Test_Url = 'https://www.google.com/'


  br = Browser_Server.new
  br.Open_browser('chrome', 'https://www.google.com/')
  tc=Google_Chrome_test.new
  tc.Load_Data_Page

end