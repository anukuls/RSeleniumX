require 'rubygems'
require 'selenium-webdriver'

class Google_Page
  
  element = nil
  
  #Page object for text field search
  def textfield_Search(driver)
    myWait = Selenium::WebDriver::Wait.new(:timeout => 30)
    myWait.until { driver.find_element(:name => "q") }
    
    begin
      element = driver.find_element(:name => "q")
    rescue Exception => e
      puts "Unable to locate Search text field"
    end
    
    return element
  end
  
end
