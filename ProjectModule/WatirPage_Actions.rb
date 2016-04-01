require 'rubygems'
require 'selenium-webdriver'
require '../pageObjects/Watir_Page.rb'


class WatirPage_Actions
  def self.Fill_Form(driver)
    begin
      Watir_Page.textfield_Watir(driver).send_keys "Selenium Tutorials";
      Watir_Page.textarea_Watir(driver).send_keys "Selenium test";
      Watir_Page.radiobutton_Selenium(driver).click
      Watir_Page.checkbox_Ruby(driver).click
      #Watir_Page.Dropdown_Watirpage(driver).click
      Watir_Page.Submit_Button_Watirpage(driver).click;  
   
   rescue Exception => e
      puts e.message
   end
  end  
  end 
