require 'selenium-webdriver'
require 'roo'
require_relative '/Users/girishg/RubymineProjects/Ruby_Automation/Browser_Config/browser_server.rb'
class Google_Chrome_test
  def Load_Data_Page
    br = Browser_Server.new

    ods = Roo::Spreadsheet.open('/Users/girishg/RubymineProjects/Ruby_Automation/DataSource/user.xlsx')
    search_text = ods.sheet(0).cell(2,2)
    puts search_text
    sleep 3

    serch_box = $driver.find_element(name:'q')
    serch_box.send_keys(search_text)
    sleep 3

    serch_btn = $driver.find_element(name:'btnK')
    serch_btn.click
  end

end

br = Browser_Server.new
br.Open_browser('chrome', 'https://www.google.com/')
tc=Google_Chrome_test.new
tc.Load_Data_Page

