require 'rubygems'
require 'selenium-webdriver'
require '../utility/Common_Actions'
require '../ProjectModule/WatirPage_Actions'

include ::Common_Actions
class Watir_Page_Fill 
   def Watir_Page()
     begin
     driver = Common_Actions.openBrowser("chrome")
     driver.navigate.to "http://bit.ly/watir-example"
     puts "AAAAA"
     WatirPage_Actions.Fill_Form(driver)
     puts "BBBBB"
     rescue Exception => e
       puts e.message
     end
   
   end 
end

w1 = Watir_Page_Fill.new
w1.Watir_Page