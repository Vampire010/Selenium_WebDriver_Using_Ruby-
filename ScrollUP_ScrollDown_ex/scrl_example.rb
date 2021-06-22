require 'selenium-webdriver'
class Scrl_Example
  $driver = Selenium::WebDriver.for :chrome

  def open_brow
    $driver.navigate.to 'https://www.google.co.in/'
  end

  def Scrl_Down_Page
    serch_box = $driver.find_element(name:'q')
    serch_box.send_keys("selenium" , )
    sleep 3

    serch_btn = $driver.find_element(name:'btnK')
    serch_btn.click

    #Scroll Down
    $driver.execute_script("window.scrollTo(100,document.body.scrollHeight);")
    sleep 5

    #Scroll left
    $driver.execute_script("window.scrollTo(100,document.body.scrollHeight);")
    sleep 5
  end
end
scrl = Scrl_Example.new
scrl.open_brow
scrl.Scrl_Down_Page