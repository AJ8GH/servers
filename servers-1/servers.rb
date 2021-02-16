require 'socket'

Exercise 1 -keep the server open
server = TCPServer.new(2345)

loop do
  socket = server.accept
  socket.puts 'What do you say?'
  they_said = socket.gets.chomp
  socket.puts "You said: #{they_said}. Goodbye! Standing by..."
  socket.close
end

Exercise 2 - user can keep typing until they say quit

server = TCPServer.new(2345)
socket = server.accept

loop do
  socket.puts 'What do you say?'
  they_said = socket.gets.chomp
  socket.close if they_said == 'quit'

  socket.puts "You said #{they_said}. Goodbye! For now..."
end

# Exercise 4 - interact with Notes app over the server

class NoteList
  def add_note(text)
    notes << text
  end

  def see_notes
    notes.dup
  end

  private

  attr_reader :notes

  def initialize
    @notes = []
  end
end

note_list = NoteList.new

loop do
  socket.puts "would you like to 'add' a note, 'see' your notes, or 'quit'"
  input = socket.gets.chomp
  if input == 'add'
    note = socket.gets.chomp
    note_list.add_note(note)
  elsif input == 'see'
    socket.puts(note_list.see_notes)
  elsif input == 'quit'
    socket.close
    exit
  end
end
