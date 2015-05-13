require 'socket'      # Sockets are in standard library

# Keep in mind OS might block to use ports up to 10000
class Client
  def initialize(hostname, port=10001)
    @hosname = hostname
    @port = port
    puts "init client"
    connect #start connecting establishment
  end

  def connect
    begin #Trying to connect
    puts "Trying to connect"
    s = TCPSocket.open(@hosname, @port)
    s.puts command #puts command
    while line = s.gets   # Read lines from the socket
      puts line.chop      # And print with platform line terminator
    end
    s.close
    rescue Exception => e #Catch errors
      puts "Can't connect to socket server using giving parameters. An error: "+e.message
    end
  end

  def command
    return "Turn left, please"
  end

end

# Init a client
Client.new("localhost", 10001)
