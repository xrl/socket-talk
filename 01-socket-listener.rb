require 'socket'

TCPServer.open("127.0.0.1", 14641) do |serv|
  s = serv.accept
  s.puts Time.now
  s.close
end