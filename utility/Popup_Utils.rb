require 'rubygems'
require 'selenium-webdriver'

class Popup_Utils
  
# Accepts the alert box.
# Takes browser object as the parameter 
  def accept_alert(driver)
    begin
      myWait1 = Selenium::WebDriver::Wait.new(:timeout => 60)
      myWait1.until { 
        driver.switch_to.alert  
      }    
      driver.switch_to.alert.accept     
      rescue Exception => e
       puts e.message  
    end
  end
  
# Dismisses the alert box.
# Takes browser object as the parameter   
  def dismiss_alert(driver)
    begin
      myWait1 = Selenium::WebDriver::Wait.new(:timeout => 60)
      myWait1.until { 
        driver.switch_to.alert  
      }     
      driver.switch_to.alert.dismiss
      rescue Exception => e
       puts e.message
    end
  end
 
# Returns the text of the alert box
# Takes browser object as the parameter  
  def get_alert_text(driver)
    begin
      myWait1 = Selenium::WebDriver::Wait.new(:timeout => 60)
      myWait1.until { 
        driver.switch_to.alert  
        }     
      alert_text =  driver.switch_to.alert.text
      driver.switch_to.alert.dismiss    
      return alert_text
      rescue Exception => e
        puts e.message
        return null
    end
  end

#Sends text to the alert box.  
=begin  
  def send_alert_text(driver,alert_text)
    begin
      myWait1 = Selenium::WebDriver::Wait.new(:timeout => 60)
     myWait1.until { 
        driver.switch_to.alert  
      }
      puts "IN P"
      puts driver.switch_to.alert.text
      
      s1 = driver.switch_to.alert
      s1.send_keys(alert_text)
      puts alert_text
      rescue Exception => e
       puts e.message
    end
  end
=end 
 
end