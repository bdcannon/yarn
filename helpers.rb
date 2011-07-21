require 'httpclient'

module Helpers
  def send_data(data)
    socket = TCPSocket.new(@server.host, @server.port)
    socket.write data
    out = socket.read
    socket.close
    out
  end

  def get(url)
    HTTPClient.timeout(10) do 
      HTTPClient.get(URI.parse("http://#{@server.host}:#{@server.port}" + url))
    end
  end
  
  def post(url, params={})
    HTTPClient.post(URI.parse("http://#{@server.host}:#{@server.port}" + url), params).body
  end

  def stop_server
    @server.stop
    @thread.kill
  end

  def start_server(host='localhost',port=8000)
    @thread = Thread.new { @server.start(host,port) }
    sleep 0.1 until @server.socket # wait for socket to be created
  end
end

