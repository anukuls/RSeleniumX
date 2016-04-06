require 'rubygems'
require 'selenium-webdriver'

module Google_Page
  
  element = nil
   
  def textfield_Search(driver)
    myWait = Selenium::WebDriver::Wait.new(:timeout => 30)
    myWait.until { driver.find_element(:name => "q") }
    #myWait.until {driver.find_element(By.name("q"))}
    
    begin
      element = driver.find_element(:name => "q")
    rescue Exception => e
      puts "Unable to locate Search text field"
    end
    
    return element
  end
  
  def button_Search(driver)
    myWait = Selenium::WebDriver::Wait.new(:timeout => 30)
    myWait.until { driver.find_element(:name => "btnG") }
    
    begin
      element = driver.find_element(:name => "btnG")
    rescue Exception => e
      puts "Unable to locate Search button"
    end
    
    return element
  end
  
  def link_Selenium(driver)
    myWait = Selenium::WebDriver::Wait.new(:timeout => 30)
    puts "0000000"
    myWait.until { driver.find_element(:link_text,"Selenium WebDriver") }
      puts "11111"
      begin
        element = driver.find_element(:link_text,"Selenium WebDriver")
        puts "222222"
      rescue Exception => e
        puts "Unable to locate Selenium Webdriver link"
      end
      
      return element
  end
 
end
