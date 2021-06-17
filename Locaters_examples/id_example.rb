require 'selenium-webdriver'

class ID_Example
  $driver = Selenium::WebDriver.for :chrome
  def open_brow
    $driver.navigate.to 'https://parabank.parasoft.com/'
  end

  def Signing_up
    #By Link Text
    # $driver.find_element(link: 'Register').click
    #By Partial Link Text
    $driver.find_element(partial_link_text: 'Regis').click

    #By ID
    $driver.find_element(id: 'customer.firstName').send_keys('Girish')
    $driver.find_element(id: 'customer.lastName').send_keys('Ram')

    #By name
    $driver.find_element(name: 'customer.address.street').send_keys('11 chruch Street , new Town')
    $driver.find_element(name: 'customer.address.city').send_keys('Bangalore')

    #By Xpath
    $driver.find_element(xpath: '//*[@id="customer.address.state"]').send_keys('Karnataka')
    $driver.find_element(xpath: '//*[@id="customer.address.zipCode"]').send_keys('54467')


    #By Full Xpath
    $driver.find_element(xpath: '/html/body/div[1]/div[3]/div[2]/form/table/tbody/tr[7]/td[2]/input').send_keys('1110002221')
    $driver.find_element(xpath: '/html/body/div[1]/div[3]/div[2]/form/table/tbody/tr[8]/td[2]/input').send_keys('54467')

    #By Css Selector
    $driver.find_element(css: '#customer\.username').send_keys('Girish09')
    $driver.find_element(css: '#customer\.password').send_keys('Pass007')
    $driver.find_element(css: '#repeatedPassword').send_keys('Pass007')

    #By Xpath
    $driver.find_element(xpath: '//*[@id="customerForm"]/table/tbody/tr[13]/td[2]/input').click

    sleep 5
  end

end
idex = ID_Example.new
idex.open_brow
idex.Signing_up
