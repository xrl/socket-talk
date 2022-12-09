require 'socket'

sock = TCPSocket.new "127.0.0.1", 14641
data = sock.gets
puts data
