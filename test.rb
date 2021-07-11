require 'webrick'

server = WEBrick::HTTPServer.new({
    :DocumentRoot => '.',
    :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
    :Port => '3000',
  })
  ['INT', 'TERM'].each {|signal|
    Signal.trap(signal){ server.shutdown }
  }
  server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'welcome.html.erb')
  server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')
  server.mount('/about', WEBrick::HTTPServlet::ERBHandler, 'about.html.erb')
  server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')
  server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')
  server.mount('/goya_f.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya_f.rb')
  server.start