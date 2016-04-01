require 'rubygems'
require 'selenium-webdriver'
require "../pageObjects/Google_Page"

module Google_Actions
  
  include Google_Page 
	
  def googleSearch(driver,search_str)
    Google_Page.textfield_Search(driver).send_keys(search_str)
    Google_Page.button_Search(driver).click
        
  end
  
end  