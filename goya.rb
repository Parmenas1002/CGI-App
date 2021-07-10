require 'cgi'

cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8"){
    data = cgi['goya']
    "<html>
        <body>
        <h1>Goya List</h1>
        <p>#{data}</p>
        </body>
    </html>"
}