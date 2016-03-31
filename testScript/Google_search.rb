require 'rubygems'
require 'selenium-webdriver'
require "../utility/Common_Actions"

include ::Common_Actions

class Google_search
   
   def google_Search
     
     driver = Common_Actions.openBrowser("firefox")
     driver.navigate.to "http://www.google.com"
     Google_Actions.googleSearch(driver,"Selenium WebDriver")
   
   end 

end

gs = Google_search.new
gs.google_Search