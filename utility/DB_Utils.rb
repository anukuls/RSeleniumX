require 'rubygems'
require 'mysql'

module DB_Utils
  
  def db_connect(hostname,username,password,db)
    @con = Mysql.real_connect(hostname,username,password,db)
    puts "host connected"
    return @con
  end
  
  def query_execute(sql)
    query_result = @con.query(sql)

    query_result.each do |data|
      puts data
    end
    return query_result
  end
  
  def db_close
    @con.close
    puts "db connection closed"
  end
end