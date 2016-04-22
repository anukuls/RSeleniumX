require 'rubygems'
require 'selenium-webdriver'
require '../utility/Common_Actions'
require '../ProjectModule/WatirPage_Actions'
require 'test/unit'
require '../utility/Reporting'

include ::Common_Actions

class Watir_Page_Fill < Test::Unit::TestCase 
   
   def test_Watir_Page()
     begin
       b = Reporting.new
       driver = Common_Actions.openBrowser("chrome")
       driver.navigate.to "http://bit.ly/watir-example"   
        WatirPage_Actions.Fill_Form(driver)  
        b.add_to_report("Check Google Home Page","Check The Title in Google Home Page","IE","Login should be successfull","Login is successful","PASS","Title Present")
        b.add_to_report("Check Google Home Page","Check The Title in Google Home Page","FF","Login should be successful","Login is not successful","FAIL","Title Not Present")
        rescue Exception => e
       puts e.message
     end
   
   end 
end