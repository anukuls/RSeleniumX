require 'rubygems'
require 'net/ssh'

module Unix_Utils
  
  def session_connect(hostname,username,password)
    begin
      ssh = Net::SSH.start(hostname,username,password)
    rescue
      puts "Unable to connect to #{hostname}"  
    end
    return ssh
  end 
   
  def execute_command(ssh_obj, cmd)
    begin
      result = ssh_obj.exec!(cmd) 
      puts result
    rescue
      puts "Unable to execute command #{cmd}"
    end
  end
   
  def connection_close(ssh_obj)
     ssh_obj.close
  end
  
end