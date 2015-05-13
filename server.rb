require 'socket'                # Get sockets from stdlib

def init(port)
  begin
    server = TCPServer.open(port)
    puts "Trying start a server on port #{port}"
    listener(server)

  rescue Exception => e
    puts "We caught an error while socket creation: " + e.message
  end
end


def listener(server)
  puts "Server was started"
loop {
  Thread.start(server.accept) do |client|
    command = client.gets
    client.puts(Time.now.ctime) # Send the time to the client
    client.puts(command) # Return back to client it own message
    client.puts "Closing the connection. Bye!"
    client.close                # Disconnect from the client
  end
}

end

#Run the server
init(10001)