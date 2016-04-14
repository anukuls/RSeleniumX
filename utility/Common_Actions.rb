require 'rubygems'
require 'selenium-webdriver'
require "#{File.dirname(__FILE__)}/../ProjectModule/Google_Actions"


module Common_Actions
  
    include Google_Actions
    
  def self.openBrowser(browser)
    brower_name = browser.downcase
    
    case brower_name
      
      when "chrome"
        Selenium::WebDriver::Chrome.driver_path = "..//Drivers//chromedriver.exe"
        driver = Selenium::WebDriver.for :chrome
           
      when "firefox"
        driver = Selenium::WebDriver.for :firefox
        
      when "ie"
         Selenium::WebDriver::IE.driver_path = "..//Drivers//IEDriverServer.exe"
         driver = Selenium::WebDriver.for :ie
         puts driver
         
    end
    driver.manage.timeouts.implicit_wait = 300
    driver.manage.window.maximize
    return driver
    
  
  end
    
end 