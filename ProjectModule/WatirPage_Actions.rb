require 'rubygems'
require 'selenium-webdriver'
require '../pageObjects/Watir_Page.rb'
#gem 'test-unit'
#require 'test/unit'
require '../utility/Assertion.rb'
#require 'test/unit/assertions.rb'


class WatirPage_Actions
  
  def self.Fill_Form(driver)
    
    begin
      Watir_Page.textfield_Watir(driver).send_keys "Selenium Tutorials";
      Watir_Page.textarea_Watir(driver).send_keys "Selenium test";
      Watir_Page.radiobutton_Selenium(driver).click
      Watir_Page.checkbox_Ruby(driver).click
      #Watir_Page.Dropdown_Watirpage(driver).click
      Watir_Page.Submit_Button_Watirpage(driver).click;  
      result = (driver.find_element(:tag_name => "body").text.include?("Your response has been recorded"))
      puts result
      
      #if result.to_s == "true"
       # puts "exists"
      #else
       # raise "not exists"
      #end
      assert {result == true}
       driver.close
   rescue Exception => e
      puts e.message
   end
  end  
  end 
