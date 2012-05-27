require 'sinatra'

# For Foreman
configure(:development) { STDOUT.sync = true }

get '/' do
  @styles = File.read("public/styles.css")
  erb :"index.html", layout:false
end
