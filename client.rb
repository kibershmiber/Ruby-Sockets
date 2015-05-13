require 'socket'      # Sockets are in standard library
# Keep in mind OS might block to use ports up to 10000
class Client
  def initialize(hostname, port=10001)
    @hosname = hostname
    @port = port
    #init client
    connect
  end

  def connect
    s = TCPSocket.open(@hosname, @port)
    s.puts("Turn left")
    while line = s.gets   # Read lines from the socket
      puts line.chop      # And print with platform line terminator
    end
    s.close               # Close the socket when done

  end
end

Client.new("localhost", 10001)
