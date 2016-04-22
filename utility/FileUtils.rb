require 'rubygems'
require 'selenium-webdriver'

class File_Utils
  
# read_file function takes filename as the parameter and 
# returns the content of the file in an array
  def read_file(filename)    
    begin
      file_name = filename
      content = Array.new
      
      File.open(file_name, 'r') do |f1|  
        while line = f1.gets  
          content << line
         end  
        end         
       return content          
     rescue Exception => e
       puts e.message        
    end    
  end
  
  # write_file method writes to a given file.
  # Overwrites the existing file if the file exists. 
  #If the file does not exist, creates a new file for reading and writing.
  def write_file(filename,data_write)
    begin
      data = data_write
      aFile = File.new(filename, "w+")      
        if aFile
          aFile.syswrite(data)
        else
          raise "Unable to open file!"
        end 
       rescue Exception => e
       puts e.message
    end   
  end
  
  # append_file() makes changes to a file.
  # It takes filename and data[array] as the parameter
  # The file pointer is at the end of the file if the file exists. 
  # The file opens in the append mode. If the file does not exist, it creates a new file for reading and writing.
  def append_file(filename,data)
    begin
      File.open(filename, "a+") do |f|
      f<< data
       end
     rescue Exception => e
       puts e.message 
    end
  end
  
  
  #rename_file renames the file with a new file name.
  #Takes parameter: old_filename and new_filename, replcaes the old file name with new file name.
  def rename_file(old_filename,new_filename)
    begin
      File.rename(old_filename,new_filename)
      rescue Exception => e
       puts e.message
    end
  end
  
  
  # delete_file deletes file from the system.
  # Takes filename as the parameter
  def delete_file(filename)
    begin
      File.delete(filename)
      rescue Exception => e
       puts e.message
    end
  end
  
end
