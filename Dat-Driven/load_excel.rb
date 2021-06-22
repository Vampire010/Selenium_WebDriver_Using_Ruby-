require 'selenium-webdriver'
require 'roo'
class Load_Excel
  $driver = Selenium::WebDriver.for :chrome

  def open_brow
    $driver.navigate.to 'https://www.google.co.in/'
  end

  def Load_Data_Page
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
scrl = Load_Excel.new
scrl.open_brow
scrl.Load_Data_Page