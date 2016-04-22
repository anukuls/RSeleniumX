class Overall_Reporting
  
  $no_times = 0
  @count_pass = 0
  @count_fail = 0

  def get_time_name
    $time=Time.now
    $time_name="#{$time.hour.to_s}-#{$time.min.to_s}-#{$time.sec.to_s}-#{$time.day.to_s}-#{$time.mon.to_s}-#{$time.year.to_s}"
    $result_date = "#{$time.day.to_s}-#{$time.month.to_s}-#{$time.year.to_s}"
  end

  def create_report
    get_time_name
    @result_file_name="Report"+"-"+$time_name
    @result_file_name_2="Overall_Report"+"-"+$time_name
    @full_file_name="../Results/#{@result_file_name}.html"
    @full_file_name_2="../Results/#{@result_file_name}.html"
    $report=File.open(@full_file_name,'w')
    $report_summary =File.open(@full_file_name_2,'w')  
  end

  def insert_head_title(title)
    $report.puts "<html><head>
    <title> #{title} </title>
    </head>"
   end

   def start_table
    $report=File.open(@full_file_name,'a')
    $report.puts "<table border=1>
    <tr>
    <th>Test Case Name</th>
    <th>Test Case Description</th>
    <th>Browser Name</th>
    <th>Expected Result</th>
    <th>Actual Results</th>
    <th>Result</th>
    <th>Remarks</th>
    </tr>"
    $report.close
  end

  def insert_reportname_date(name,date)
    $report.puts "<body bgcolor='#FFFFFF'>
    <p size=20>
    <center> <b><u>#{name} </u></b></center>
    </p>
    <p align='right' size=12>
    <b>Date: #{date} </b>
    </p>"
    $report.close
  end

def add_to_report(*details) 
  if $no_times == 0
    puts "in if"
    create_report
    insert_head_title("HTML Test Report")
    insert_reportname_date("Test Report",$result_date) 
    start_table
  end
  
  
    $report=File.open(@full_file_name,'a')
    name=details[0]
    desc=details[1]
    browser=details[2]
    expected_result = details[3]
    actual_result = details[4]
    result=details[5]
    reason=details[6]
    if result.downcase == "pass"
      @count_pass = @count_pass + 1
    $report.puts "<tr>
    <td>#{name}</td>
    <td> #{desc}</td>
    <td> #{browser} </td>
    <td> #{expected_result} </td>
    <td> #{actual_result} </td>
    <td bgcolor='green'>#{result}</td>
    <td>#{reason}</td>
    </tr>"
    else
      @count_fail = @count_fail + 1
      
    $report.puts "<tr>
    <td>#{name}</td>
    <td> #{desc}</td>
    <td> #{browser} </td>
    <td> #{expected_result} </td>
    <td> #{actual_result} </td>
    <td bgcolor='red'>#{result}</td>
    <td>#{reason}</td>
    </tr>"
    end
    $no_times = $no_times.to_i + 1
    puts $no_times
    $report.close
  end

  def close_table
    $report=File.open(@full_file_name,'a')
    $report.puts "</table></br>"
    $report.close
  end
  

  def summary_report(overall,passed,failed)
    $report_summary.puts "<html><head>
    <title> Report Summary </title>
    </head>"
    
    $report=File.open(@full_file_name_2,'a')
    $report.puts "<table border=1>
    <tr>
    <th>Test Case Name</th>
    <th>Test Case Description</th>
    <th>Status</th>
    </tr>"
    $report.puts "<body bgcolor='#FFFFFF'>
    <p size=20>
    <center> <b><u>Reporting Summary </u></b></center>
    </p>
    
    $report.close
    $report_overall=overall
    $report_pass=passed
    $report_fail=failed
    $report=File.open(@full_file_name,'a')
    $report.puts "<p> <b>Total Test cases : #{$report_overall} </b></p>
    <p> <b>Passed : #{$report_pass} </b></p>
    <p> <b>Failed : #{$report_fail} </b></p>
    </body>
    </html>"
    $report.close
 end

end