require 'socket'

socket = TCPSocket.new('localhost', 2345)

# Client exercise - endless conversation loop between client and server
puts socket.gets
puts "Wow what a rude server... I'm going to say Sarah"
socket.puts 'Sarah'
puts socket.gets
puts 'Thanks!'
loop do
  puts socket.gets
  socket.puts '35?'
  puts socket.gets
  socket.puts '79??'
  puts socket.gets
  socket.puts '7????'
  puts socket.gets
  puts 'oh come on!'
end
socket.close
