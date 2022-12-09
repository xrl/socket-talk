require 'socket'

TCPServer.open("127.0.0.1", 80) do |serv|
  socket = serv.accept
  request = socket.gets
  header1 = socket.gets
  header2 = socket.gets
  header3 = socket.gets
  end_of_headers_line = socket.gets
  verb,path,version = request.split(" ")

  socket.puts("HTTP/1.0 200")
  socket.puts("\r")
  socket.puts("Hello friend!")
end