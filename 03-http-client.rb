require 'socket'

sock = TCPSocket.new '127.0.0.1', 80

sock.puts("GET / HTTP/1.0")
sock.puts("Host: scientist.com")
sock.puts("User-Agent: xavier/1.2.3")
sock.puts("Accept: */*")
sock.puts("\r")

header1 = sock.gets
separator = sock.gets
data = sock.gets
puts [header1, data]
