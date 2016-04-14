require 'rubygems'
require 'rubyXL'

class Excel_Utils
  
  def initialize(path,sheetname)
    @workbook = RubyXL::Parser.parse(path)
    @worksheet = @workbook.worksheets[0]
  end
  
  def getCellData(func_name,field)
    first_row = @worksheet[0]
     
     r = -1
     c = 0
     
     header = first_row.cells  
     header.each do |cell|
       if cell.value == field
         break
       end
       c = c+1
     end
     
     @worksheet.each do |row|
       row.cells.each do |c|
         begin
          if c.value == func_name.to_s
            break
          end
         rescue NilClass
         end  
       end
       r = r+1
     end
     
     field_value = @worksheet.sheet_data[r][c].value
     
     return field_value
  end

end