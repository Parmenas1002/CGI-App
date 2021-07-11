require 'cgi'

cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8"){
    data = cgi['goya_f']
    "<html>
        <body>
        <h1>Poor quality Goya list</h1>
        <p>#{data}</p>
        </body>
    </html>"
}