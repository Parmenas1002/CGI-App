require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンス（反応）を返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {

  get = cgi['input']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>受け取った文字列は下記になります</p>
      <p>文字列：#{get}</p>
    </body>
  </html>"
}