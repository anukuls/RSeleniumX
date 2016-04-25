require 'rubygems'
require 'selenium-webdriver'
require 'Logger'

class LogUtil
    
    def setUniqueFilename()
      time_stamp = Time.new
      curr_time =  time_stamp.strftime("%d%m%Y%M%S")
      filename = "#{"../Logging/Log_File_"}#{curr_time}"
      return filename
    end
    
    def initialize()
       filename = setUniqueFilename()
       @log = Logger.new(filename)
    end

# From least to most severe, 
# the instance methods are Logger.debug, Logger.info, Logger.warn, Logger.error, and Logger.fatal.
    def setLogLevel(log_level)
      begin
          puts log_level
          value = ['debug','info','warn','error','fatal'].include?(log_level)
          puts value
        if (value)
          puts "IN IF"
          upper_log_level = log_level.upcase 
          log1 =  "Logger::#{upper_log_level}"
          log2 = log1.to_i
          puts upper_log_level
          puts log1
          #@log.level = Logger::FATAL
          @log.level = log2
        else
          raise "Invalid option. Acceptable values are: 'debug','info','warn','error','fatal'"
        end
      end
    end

# Method for debug logger
    def debug(msg)
      begin
        @log.debug(msg)
        rescue Exception => e
          puts e.message
      end
    end

# Method for debug logger  
    def error(msg)
      begin
        @log.error(msg)
        rescue Exception => e
          puts e.message
      end
    end 

# Method for debug logger
    def info(msg)
      begin
        @log.info(msg)
        rescue Exception => e
          puts e.message
      end
    end

# Method for debug logger
    def warn(msg)
      begin
        @log.warn(msg)
        rescue Exception => e
          puts e.message
      end
    end        
  
# Method for debug logger  
    def fatal(msg)
      begin
        @log.fatal(msg)
        rescue Exception => e
        puts e.message
      end
    end 

# Method to be called at the starting of the test case
    def startTC()
      @log.info("****************************************************************************************")
     
      @log.info("****************************************************************************************")
   
      @log.info("======== Starting Execution of Test case ========")
   
      @log.info("****************************************************************************************")
   
      @log.info("****************************************************************************************")
    end
  
# Method to be called when the test case ends
    def endTC()
      @log.info("XXXXXXXXXXXXXXXXXXXXXXX             "+"-E---N---D-"+"             XXXXXXXXXXXXXXXXXXXXXX")
     
      @log.info("X")
   
      @log.info("X")
   
      @log.info("X")
   
      @log.info("X")  
    end
  
end
