require 'rubygems'
require 'selenium-webdriver'
require "#{File.dirname(__FILE__)}/../../utility/Common_Actions"
require "test/unit"
require "../../utility/TestData_Loader"

include TestData_Loader
include ::Common_Actions

class Test_GoogleSearch < Test::Unit::TestCase
   
   def test_googleSearch
     data = TestData_Loader.loadTestData(self.class)
     url = data.getCellData(self.class, "URL")
     puts "url is #{url}"
     driver = Common_Actions.openBrowser("firefox")
     driver.navigate.to url
     Google_Actions.googleSearch(driver,"Selenium WebDriver")
   
   end 

end

#gs = Google_search.new
#gs.google_Search
