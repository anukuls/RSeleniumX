require 'rubygems'
require 'selenium-webdriver'
require "#{File.dirname(__FILE__)}/../../utility/Common_Actions"
require "test/unit"
require "../../utility/TestData_Loader"
#require "../../ProjectModule/Google_Actions"

include TestData_Loader
include ::Common_Actions
#include Google_Actions

class Test_GoogleSearch < Test::Unit::TestCase
   
   def test_googleSearch
     data = TestData_Loader.loadTestData(self.class)
     driver = Common_Actions.openBrowser("firefox")
     driver.navigate.to "http://www.google.com"
     Google_Actions.googleSearch(driver,"Selenium WebDriver")
   
   end 

end

#gs = Google_search.new
#gs.google_Search
