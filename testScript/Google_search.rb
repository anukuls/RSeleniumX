require 'rubygems'
require 'selenium-webdriver'
require "../utility/Common_Actions"
require "test/unit"

include ::Common_Actions

class Test_GoogleSearch < Test::Unit::TestCase
   
   def test_googleSearch
     
     driver = Common_Actions.openBrowser("firefox")
     driver.navigate.to "http://www.google.com"
     Google_Actions.googleSearch(driver,"Selenium WebDriver")
   
   end 

end

#gs = Google_search.new
#gs.google_Search
