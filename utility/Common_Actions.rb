require 'rubygems'
require 'selenium-webdriver'

module Common_Actions
  
    include Google_Actions
    
  def openBrowser(browser)
    #File file = new File("D:\\chromedriver.exe");
    # System.setProperty("webdriver.chrome.driver", file.getAbsolutePath() );
    #  WebDriver driver = new ChromeDriver();
    
    driver = new FirefoxDriver()
    
    return driver
  
  end
    
end 