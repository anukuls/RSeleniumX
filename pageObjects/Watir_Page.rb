require 'rubygems'
require 'selenium-webdriver'

#Watir Page Object class for POC1
#contains all the page object repository
class Watir_Page
  
  def self.textfield_Watir(driver)
    myWait1 = Selenium::WebDriver::Wait.new(:timeout => 30)  
    myWait1.until { driver.find_element(:id => "entry_1000000") } 
    begin
      element = driver.find_element(:id => "entry_1000000")
    rescue Exception => e
      puts "Unable to locate text field"
    end    
    return element
  end
  
  def self.textarea_Watir(driver)
    myWait1 = Selenium::WebDriver::Wait.new(:timeout => 30)  
    myWait1.until { driver.find_element(:id => "entry_1000001") }    
    begin
      element = driver.find_element(:id => "entry_1000001")
    rescue Exception => e
      puts "Unable to locate text area"
    end    
    return element
  end
  
  def self.radiobutton_Watir(driver)
    myWait1 = Selenium::WebDriver::Wait.new(:timeout => 30)  
    myWait1.until { driver.find_element(:id => "group_1000002_1") }  
    begin
      element = driver.find_element(:id => "group_1000002_1")
    rescue Exception => e
      puts "Unable to locate Watir radio button"
    end    
    return element
  end
  
  def self.radiobutton_Selenium(driver)
    myWait1 = Selenium::WebDriver::Wait.new(:timeout => 30)  
    myWait1.until { driver.find_element(:id => "group_1000002_2") }
    
    begin
      element = driver.find_element(:id => "group_1000002_2")
    rescue Exception => e
      puts "Unable to locate Selenium radio button"
    end    
    return element
  end
  
  def self.checkbox_Ruby(driver)
    myWait1 = Selenium::WebDriver::Wait.new(:timeout => 30)  
    myWait1.until { driver.find_element(:id => "group_1000003_1") }
    
    begin
      element = driver.find_element(:id => "group_1000003_1")
    rescue Exception => e
      puts "Unable to Ruby checkbox"
    end    
    return element
  end

  
  def self.checkbox_Python(driver)
    myWait1 = Selenium::WebDriver::Wait.new(:timeout => 30)  
    myWait1.until { driver.find_element(:id => "group_1000003_3") }
    
    begin
      element = driver.find_element(:id => "group_1000003_3")
    rescue Exception => e
      puts "Unable to Python checkbox"
    end    
    return element
  end
  
  def self.Dropdown_Watirpage(driver)
    myWait1 = Selenium::WebDriver::Wait.new(:timeout => 30)  
    myWait1.until { driver.find_element(:id => "entry_1000004") }
    
    begin
      element = driver.find_element(:id => "entry_1000004")
    rescue Exception => e
      puts "Unable to Dropdown"
    end    
    return element
  end
  
  def self.Submit_Button_Watirpage(driver)
    myWait1 = Selenium::WebDriver::Wait.new(:timeout => 30)  
    myWait1.until { driver.find_element(:id => "ss-submit") }
    
    begin
      element = driver.find_element(:id => "ss-submit")
    rescue Exception => e
      puts "Unable to submit button"
    end    
    return element
  end
  
end