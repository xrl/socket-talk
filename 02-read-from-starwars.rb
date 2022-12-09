require 'socket'

sock = TCPSocket.new 'towel.blinkenlights.nl', 23

while line = sock.gets
  puts line
end