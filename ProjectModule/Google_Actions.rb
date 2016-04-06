require 'rubygems'
require 'selenium-webdriver'
require "../pageObjects/Google_Page"
require "../utility/Assertions"
#require "test/unit"

module Google_Actions
    
  include Google_Page 
	
  def googleSearch(driver,search_str)
    Google_Page.textfield_Search(driver).send_keys(search_str)
    Google_Page.button_Search(driver).click
    Google_Page.link_Selenium(driver).click
      
    #Assert.assertTrue(body_text.contains("Selenium is a suite of tools"));
    sleep 10 
    assert { driver.find_element(:tag_name => "body").text.include?("Selenium 1.0") }
       
  end
  
end  

