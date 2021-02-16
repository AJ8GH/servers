require 'socket'

# Client exercise - endless conversation loop between client and server
server = TCPServer.new(2345)
socket = server.accept
socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
name = socket.gets.chomp
socket.puts "THAT'S A LOVELY NAME #{name}"
loop do
  socket.puts "LET'S PLAY A GAME. PICK A NUMBER BETWEEN 1 AND 100. IF YOU GUESS RIGHT, YOU WIN."
  socket.gets
  socket.puts "WRONG! GUESS AGAIN!"
  socket.gets
  socket.puts "WRONG! HAHAHA! AGAIN."
  socket.gets
  socket.puts "NOPE! AGAIN..."
end
  socket.close
