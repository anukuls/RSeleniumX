require 'rubygems'
require "#{File.dirname(__FILE__)}/Excel_Utils"

module TestData_Loader
  
  def loadTestData(class_obj)
    
    location = nil
    
    #Meenakshi - Extracting classname 
    class_obj.instance_methods(false).map { |m| 
      location = class_obj.instance_method(m).source_location.first
    }.uniq
    
    dir_location = File.dirname(location)
    dir_name = dir_location.split("/").last
    path = getTestDataPath(dir_name)
    excel = Excel_Utils.new(path, "Sheet1")
    return excel
  end
  
  def getTestDataPath(dir_name)
    
    working_dir =  File.expand_path("../../", __FILE__)
    testdata_path = working_dir + "/testScript/" + dir_name + "/TestData.xlsx"
  end
end