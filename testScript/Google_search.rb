require 'rubygems'
require 'selenium-webdriver'

module Google_search
   
   include Common_Actions
   
   def google_Search
     
     driver = Common_Actions.openBrowser(browser)
     Google_Actions.googleSearch(driver,search_str)
   
   end 

end