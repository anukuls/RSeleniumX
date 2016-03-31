require 'rubygems'
require 'selenium-webdriver'
require "../ProjectModule/Google_Actions"


module Common_Actions
  
    include Google_Actions
    
  def self.openBrowser(browser)
    #File file = new File("D:\\chromedriver.exe");
    # System.setProperty("webdriver.chrome.driver", file.getAbsolutePath() );
    #  WebDriver driver = new ChromeDriver();
    
    driver = Selenium::WebDriver.for :firefox
    
    return driver
  
  end
    
end 