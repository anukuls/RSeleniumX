require 'rubygems'
require 'selenium-webdriver'
require "#{File.dirname(__FILE__)}/../pageObjects/Google_Page"
require "#{File.dirname(__FILE__)}/../utility/Assertions"

module Google_Actions
    
  include Google_Page 
	
  def googleSearch(driver,search_str)
    Google_Page.textfield_Search(driver).send_keys(search_str)
    Google_Page.button_Search(driver).click
    Google_Page.link_Selenium(driver).click
     
    sleep 10 
    assert { driver.find_element(:tag_name => "body").text.include?("Selenium 1.0") }
       
  end
  
end  

