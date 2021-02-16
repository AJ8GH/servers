require 'socket'

server = TCPServer.new(2345)
socket = server.accept

loop do
  socket.puts "what do you say?"
  they_said = socket.gets.chomp
  exit if they_said == 'quit'

  socket.puts "You said: #{they_said}. Goodbye!"
end

# socket.close

server = TCPServer.new(2345)
socket = server.accept

socket.puts "what do you say?"
they_said = socket.gets.chomp
exit if they_said == 'quit'
socket.
socket.puts "You said: #{they_said}. Goodbye!"
